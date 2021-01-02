# MongoC Vapi

Vala bindings for the [Mongo C Driver](https://github.com/mongodb/mongo-c-driver "mongo-c-driver").

## Generate VAPI file
#### Oneliner
```sh
#the vapi file will be generated in the ./vapi folder
$ git clone https://github.com/bynect/mongo-vapi.git && cd mongo-vapi && make compose
```

#### Generate one file
You can generate a single file containing both `libbson` and `libmongoc` bindings living under the _Mongo_ namespace by using this command:
```sh
$ make compose
```

#### Generate separated file
You can generate also generate two separated file containing `libbson` and `libmongoc` bindings living under the _Bson_ and _Mongo_ namespace respectively.
```sh
#set the variable in line or export it
$ SEPARATED_VAPI= make compose
```
__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__


## Examples
```sh
#hello mongo example
$ make example-hello

#basic crud operations to local database
$ make example-crud

#bcon / json example
$ make example-bcon
```
__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__


## Tests

```sh
#check connection to local database
$ make test-status
```
__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__


## Helper
There is a small Python script that will generate the Vapi from the partials file.
Also there is a Makefile that has some helper targets for testing and examples.

You can see the avaible options using:
```sh
#Makefile help
$ make help #or make without args

#Python script help
$ python3 compose.py --help #or -h
```


## Notes
* Because the codebase to bind is fairly big, the vapi file is divided in partials file. The file itself can be easily generated with the included Python script / Makefile.

* While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

* Deprecated or next-to-deprecation features _won't be binded_.

* If you need only the VAPI file, you can download it from the [releases allegates](https://github.com/bynect/mongo-vapi/releases). Generating by yourself is probably better though.


## Changelog
* Add support for separated vapis for `libbson` and `libmongoc`.
* Add support for BCON notation.
* Add support for Crud operation.

Also see [TODO.md](./TODO.md).


## License
Copyright @bynect

This is free and open source software.
You can use/modify/redistribute it under the terms of the MIT license.
See docs/LICENSE for for more details.
