#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import argparse
import logging

try:
    from textwrap import indent
except ImportError:

    def indent(text: str, prefix: str):
        predicate = lambda line: line.strip()
        def prefixed_lines():
            for line in text.splitlines(True):
                yield (prefix + line if predicate(line) else line)

        return ''.join(prefixed_lines())


#composing
HEADER = '\n[CCode (cheader_filename = "{0}", has_type_id = false, cprefix = "mongoc_", lower_case_cprefix = "mongoc_")]\nnamespace {1} {{\n'


def prepare_license(div = '', wrapped = True):

    with open('./LICENSE', 'r') as f:
        raw_license = f.read()
        logging.debug('Reading LICENSE file')

    if wrapped:
        wrap_license = indent(raw_license, div)
        return '/*\n{}\n*/'.format(wrap_license)

    return raw_license


def find_partials(folder, suffix):

    logging.debug('Searching for *{0} files in {1}'.format(suffix, folder))

    partials = []
    for fn in os.listdir('./{}'.format(folder)):
        if fn.endswith(suffix):
            partials.append('./{0}/{1}'.format(folder, fn))

    return partials


def prepare_partials(partials_path, div):

    final_partials = []
    for fn in partials_path:
        with open(fn, 'r') as f:
            final_partials.append(indent(f.read(), div))
            logging.debug('Reading file {}'.format(fn))

    return final_partials


def compose_vapi(onefile: bool, folder: str, div: str, out: str):

    logging.debug('Composing VAPI content from partials')

    wrap_license = prepare_license(div = div)
    mongoc_wrapped = prepare_partials(find_partials(folder = folder, suffix = '.mongoc.vapi'), div = div)
    bson_wrapped = prepare_partials(find_partials(folder = folder, suffix = '.bson.vapi'), div = div)

    joined = ''.join(mongoc_wrapped + bson_wrapped if onefile else mongoc_wrapped)

    formatted = '{0}\n{1}\n{2}}}'.format(wrap_license, HEADER.format('mongoc.h,bson.h', 'Mongo'), joined)

    with open(out, 'w') as f:
        f.write(formatted)
        logging.debug('Writing on {}'.format(out))


#arg parsing
parser = argparse.ArgumentParser(
    prog = 'compose',
    usage = '%(prog)s [options]',
    description = 'Compose the partials and generate a VAPI file'
)

parser.add_argument('-o', '--out', dest = 'out', type = str, action = 'store', default = 'libmongoc-1.0.vapi', help = 'Specify output filename')
parser.add_argument('-d', '--dir', dest = 'dir', action = 'store', type = str, default = 'partials', help = 'Specify partials dir')
parser.add_argument('-v', '--verbose', dest = 'verbose', action = 'store_true', help = 'Activate verbose mode')
parser.add_argument('-l', '--license', dest = 'license', action = 'store_true', help = 'Show license')
parser.add_argument('-i', '--indent', dest = 'indent', action = 'store', default = '    ', help = 'Specify indentation, default 4 spaces')
parser.add_argument('--onefile', dest = 'onefile', action = 'store_true', default = True, help = 'Specify indentation, default 4 spaces')

args = parser.parse_args()

if args.verbose:
    logging.basicConfig(level=logging.DEBUG, format='%(message)s')
    logging.debug("Verbose mode setted")\

else:
    logging.basicConfig(level=logging.INFO, format='%(message)s')


if args.license:
    print('\n', prepare_license(wrapped = False), '\n')

elif args.out and args.dir:
    try:
        compose_vapi(onefile = args.onefile, folder = args.dir, div = args.indent, out = args.out)
    except:
        logging.critical("An error occurred, please retry", exc_info = True if args.verbose else False)
    else:
        logging.info('Done. VAPI generated in `{}`'.format(args.out))
    finally:
        logging.info('\nLicensed under MIT, see LICENSE or `make license`')
        logging.info('Do `python3 compose.py -h` to see usage options')
