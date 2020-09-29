# Mongo Vapi

Vala bindings for the [MongoDB C Driver](https://github.com/mongodb/mongo-c-driver "mongoc driver").

>**Still work in progess, not ready for CRUDs.**

Because the codebase to bind is fairly big, the vapis are divided in partials file and a file can be easily generated with the included script.
If you need only the VAPI file, you can download it from the releases allegates.

>While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

Deprecated or next-to-deprecation features of mongoc are actually not being binded.

## Generate VAPI file

```sh
$ git clone https://github.com/bynect/mongo-vapi.git && cd mongo-vapi && make
```

## Test CRUDs

```sh
$ git clone https://github.com/bynect/mongo-vapi.git && cd mongo-vapi && make test

#or simply
$ make test
```

## License
Licensed under MIT, you are free to use this VAPI. See LICENSE for more.

>If you want contribute you are welcome.
