#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import argparse
import logging
import re
import json
import sys

#indentation
try:
    from textwrap import indent

except ImportError:

    def indent(text: str, prefix: str):
        predicate = lambda line: line.strip()
        def prefixed_lines():
            for line in text.splitlines(True):
                yield (prefix + line if predicate(line) else line)

        return ''.join(prefixed_lines())


#vapi headers
HEADER = '\n[CCode ({0})]\nnamespace {1} {{'

HEADER_OPTION = 'cheader_filename = "{0}", has_type_id = false, cprefix = "{1}", lower_case_cprefix = "{1}"'

DEPENDENCIES = ['posix']

IGNORED_FILES = ['APMCallbacks.vapi']


#helper functions
def prepare_license(div = '', wrapped = True, filename = 'LICENSE'):

    license_header = 'Mongo C Driver bindings for Vala\n'

    with open('./{}'.format(filename), 'r') as f:
        raw_license = f.read()
        logging.debug('Reading LICENSE file')

    if wrapped:
        license_wrapped = indent("{}\n{}".format(license_header, raw_license), div)
        return '/*\n{}\n*/'.format(license_wrapped)

    return "{}\n{}".format(license_header, raw_license)


def find_partials(folder, suffix):

    logging.debug('Searching for *{0} files in {1}'.format(suffix, folder))

    partials = []
    for fn in os.listdir('./{}'.format(folder)):
        if fn.endswith(suffix) and fn not in IGNORED_FILES:
            partials.append('./{0}/{1}'.format(folder, fn))

    return partials


def prepare_partials(partials_path, div):

    final_partials = []
    for fn in partials_path:
        with open(fn, 'r') as f:
            final_partials.append(indent(f.read(), div))
            logging.debug('Reading file {}'.format(fn))

    return final_partials


def prepare_deps(deps: list):

    return ''.join(deps)


def compose_vapi(onefile: bool, folder: str, div: str, out: str, deps: bool, filename: str = 'libmongoc-1.0'):

    logging.debug('Composing VAPI content from partials')

    if not os.path.exists(out):
        os.makedirs(out)
        logging.debug("Created folder {}".format(out))

    license_wrapped = prepare_license(div = div)
    mongoc_wrapped = prepare_partials(find_partials(folder = './{}/libmongoc'.format(folder), suffix = '.vapi'), div = div)
    bson_wrapped = prepare_partials(find_partials(folder = './{}/libbson'.format(folder), suffix = '.vapi'), div = div)

    if not onefile:
        mongoc_joined = ''.join(mongoc_wrapped)
        bson_joined = ''.join(bson_wrapped)

        mongoc_header = HEADER.format(HEADER_OPTION.format('mongoc.h','mongoc_'), 'Mongo')
        bson_header = HEADER.format(HEADER_OPTION.format('bson.h','bson_'), 'Bson')

        bson_re = re.compile(r"(?:\b)Bson(?!(\.[\d\w]*)|([\d\w]*\b\ [\(\{]))")

        mongoc_formatted = '{0}\n{1}\n{2}\n}}\n'.format(
            license_wrapped,
            mongoc_header,
            bson_re.sub("Bson.Bson", mongoc_joined)
        )

        bson_formatted = '{0}\n{1}\n{2}\n}}\n'.format(
            license_wrapped,
            bson_header,
            re.sub(r"\bCollection\b", "Mongo.Collection", bson_joined)
        )

        with open('{0}/{1}.vapi'.format(out, filename), 'w') as f:
            f.write(mongoc_formatted)
            logging.debug('Writing on {0}/{1}.vapi'.format(out, filename))

        filename2 = 'libbson-1.0'

        with open('{0}/{1}.vapi'.format(out, filename2), 'w') as f:
            f.write(bson_formatted)
            logging.debug('Writing on {0}/{1}.vapi'.format(out, filename2))

    else:
        joined = ''.join(mongoc_wrapped + bson_wrapped)
        formatted = '{0}\n{1}\n{2}\n}}\n'.format(
            license_wrapped,
            HEADER.format(HEADER_OPTION.format('mongoc.h,bson.h','mongoc_'), 'Mongo'),
            joined
        )

        with open('{0}/{1}.vapi'.format(out, filename), 'w') as f:
            f.write(formatted)
            logging.debug('Writing on {0}/{1}.vapi'.format(out, filename))

    if deps:
        with open('{0}/{1}.deps'.format(out, filename), 'w') as f:
            f.write(prepare_deps(DEPENDENCIES))
            logging.debug('Writing on {0}/{1}.deps'.format(out, filename))
        if not onefile:
            with open('{0}/{1}.deps'.format(out, filename2), 'w') as f:
                f.write(prepare_deps(DEPENDENCIES))
                logging.debug('Writing on {0}/{1}.deps'.format(out, filename))


#arg parsing
parser = argparse.ArgumentParser(
    prog = 'compose',
    usage = '%(prog)s [options]',
    description = 'Compose the partials and generate a VAPI file'
)

parser.add_argument('-d', '--deps', dest = 'deps', action = 'store_true', default = True, help = 'Specify if .deps file will be generated')
parser.add_argument('-o', '--out', dest = 'out', type = str, action = 'store', default = 'vapi', help = 'Specify output folder')
parser.add_argument('-f', '--folder', dest = 'folder', action = 'store', type = str, default = 'partials', help = 'Specify partials folder')
parser.add_argument('-v', '--verbose', dest = 'verbose', action = 'store_true', help = 'Activate verbose mode [Debug]')
parser.add_argument('-q', '--quiet', dest = 'quiet', action = 'store_true', help = 'Activate quiet mode [Error]')
parser.add_argument('-l', '--license', dest = 'license', action = 'store_true', help = 'Show license')
parser.add_argument('-i', '--indent', dest = 'indent', type = int, action = 'store', default = 4, help = 'Specify indentation, default 4 spaces')
parser.add_argument('--onefile', dest = 'onefile', action = 'store_true', help = 'Specify if the ouput will be one file')

args, _ = parser.parse_known_args()


def set_verbosity(verbose, quiet):

    if verbose and not quiet:
        logging.basicConfig(level=logging.DEBUG, format='%(message)s')
        logging.debug("Verbose mode setted")

    elif quiet and not verbose:
        logging.basicConfig(level=logging.ERROR, format='%(message)s')

    else:
        logging.basicConfig(level=logging.INFO, format='%(message)s')


set_verbosity(args.verbose, args.quiet)

if args.license:
    print(prepare_license(wrapped = False), '\n')

elif args.out and args.folder:
    try:
        kwargs = {"onefile": args.onefile, "folder": args.folder, "div": ' ' * args.indent, "out": args.out, "deps": args.deps}
        logging.debug(json.dumps(kwargs, indent = ' ' * args.indent))
        compose_vapi(**kwargs)
    except:
        logging.critical("An error occurred, please retry", exc_info = True if args.verbose else False)

        if args.verbose:
            raise
        else:
            sys.exit(1)
    else:
        print('Done. VAPI generated in ./{} [{}]'.format(args.out, 'onefile' if args.onefile else 'separated'))
    finally:
        logging.info('\nLicensed under MIT, see LICENSE or `make license`')
        logging.info('Do `python3 compose.py -h` to see usage options')

else:
    parser.print_help(sys.stderr)

sys.exit(0)
