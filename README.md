# Mongo Vapi

Vala bindings for the [Mongo C Driver](https://github.com/mongodb/mongo-c-driver "mongoc driver").

**Still work in progess, not ready for CRUDs.**

## Generate VAPI file

```sh
#the vapi file will be generated in the ./vapi folder
$ git clone https://github.com/bynect/mongo-vapi.git && cd mongo-vapi && make
```

## Tests

```sh
#check connection to local database
$ make test-status

#make basic crud operation
$ make test-crud
```

## Notes

>While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

Because the codebase to bind is fairly big, the vapis are divided in partials file and a composed file can be easily generated with the included script.

**Deprecated or next-to-deprecation features of mongoc are actually not being binded.**

If you need only the VAPI file, you can download it from the releases allegates or get the last generated `.vapi` file in the [`vapi` folder](./vapi/).

## License
Licensed under MIT, you are free to use this VAPI. See LICENSE for more.

>If you want contribute you are welcome.
