# Mongo Vapi

Vala bindings for the [MongoDB C Driver](http://mongoc.org/ "mongoc.org").

If you need only the VAPI file, you can download it from the releases allegates.

While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

>Still work in progess, not ready for CRUDs.

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

>If you want contribute you are very welcome.
