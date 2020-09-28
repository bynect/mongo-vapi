#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os

try:
    from textwrap import indent
except ImportError:

    def indent(text: str, prefix: str):
        predicate = lambda line: line.strip()
        def prefixed_lines():
            for line in text.splitlines(True):
                yield (prefix + line if predicate(line) else line)

        return ''.join(prefixed_lines())


header = '[CCode (cheader_filename = "{0}", has_type_id = false)]\nnamespace {1} {{\n'
folder = 'partials'


bson_partials = ['./{0}/{1}'.format(folder, fn) for fn in os.listdir('./{}'.format(folder)) if fn.endswith('.bson.vapi')]
mongoc_partials = ['./{0}/{1}'.format(folder, fn) for fn in os.listdir('./{}'.format(folder)) if fn.endswith('.mongoc.vapi')]


def prepare_partials(partials_fn):

    final_partials = []
    for fn in partials_fn:
        with open(fn, 'r') as f:
            final_partials.append(indent(f.read(), '    '))#4 spaces indent

    return final_partials


def prepare_license():
    with open('./LICENSE', 'r') as f:
        _license = f.read()

    return '/*\n{}\n*/'.format(indent(_license, '   '))


def onefile():

    _license = prepare_license()

    mongoc_wrapped = prepare_partials(mongoc_partials)
    bson_wrapped = prepare_partials(bson_partials)

    
    joined_str = ''.join(mongoc_wrapped)
    joined_str.join(bson_wrapped)

    final_str = '{0}\n\n{1}\n{2}\n}}\n'.format(_license, header.format('mongoc.h,bson.h', 'Mongo'), joined_str)

    with open('./libmongoc-1.0.vapi', 'w') as f:
        f.write(final_str)


if __name__ == "__main__":
    onefile()
