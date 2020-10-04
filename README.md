# Mongo Vapi

Vala bindings for the [Mongo C Driver](https://github.com/mongodb/mongo-c-driver "mongoc driver").

**Still work in progess, not ready for Production.**

## Generate VAPI file

```sh
#the vapi file will be generated in the ./vapi folder
$ git clone https://github.com/bynect/mongo-vapi.git && cd mongo-vapi && make
```

## Examples
```sh
#hello mongo example
$ make example-hello

#basic crud operations to local database
$ make example-crud

#bcon example
$ make example-bcon
```

## Tests

```sh
#check connection to local database
$ make test-status
```

## Notes

>Because the codebase to bind is fairly big, the vapi file is divided in partials file. The file itself can be easily generated with the included Python script/ Makefile.

- While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

- Deprecated or next-to-deprecation features _won't be binded_.

- If you need only the VAPI file, you can download it from the releases allegates.

## Changelog

- Added support for BCON notation.

## License
Licensed under MIT, you are free to use this VAPI. See LICENSE for more.

>If you want contribute you are welcome.
