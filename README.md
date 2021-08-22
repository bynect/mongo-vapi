# Mongo C Vapi

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
#make
$ make compose

#python (only vapis)
$ python3 compose.py --onefile

#meson
$ meson build
```

#### Generate separated file
You can generate also generate two separated file containing `libbson` and `libmongoc` bindings living under the _Bson_ and _Mongo_ namespace respectively.

```sh
#for make
#set the variable in line or export it
$ SEPARATED_VAPI= make compose

#for python (only vapis)
$ python3 compose.py

#for meson
$ meson build -Donefile=false
```

__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__ (Only for make, Meson does it automatically).


## Build with make
### Examples

```sh
#hello mongo example
$ make example-hello

#basic crud operations to local database
$ make example-crud

#bcon / json example
$ make example-bcon
```

__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__


### Tests

```sh
#check connection to local database
$ make test-status
```

__If you want to run tests or examples using two different file (separated option), you have to set the `SEPARATED_VAPI` environmental variable.__


## Build with Meson

You can use Meson as an alternative build method to make.
Avaible options (see meson_options.txt):

* `-Donefile`: Generate a single file and namespace. Default to true.

* `-Dverbose`: Set verbosity. Default to false.

* `-Dtest`: Build test. Default to true.

* `-Dexample`: Build samples. Default to true.

```sh
#add -Donefile=false for separated vapis
$ meson build
#run ninja from the build directory
$ ninja -C build
```


## Helper

There is a small Python script that will generate the Vapi from the partials file.
Also there is a Makefile that has some helper targets for testing and examples.

You can see the avaible options using:

```sh
#Makefile help
$ make

#Python script help
$ python3 compose.py -h
```


## Usage

To use this bindings you have to add the following arguments to `valac`:

* `--pkg libmongoc-1.0`: This links libmongoc to your Vala application.

* `--pkg libbson-1.0`: Add this only if you have generated separated vapis.

* `--vapidir X`: _X_ is the directory where the generated files are stored.

* `--pkg posix`: Add only if you didn't included the `.deps` file in the vapidir.


If you are using Meson you can add the following dependencies:

* dependency('libmongoc-1.0')

* dependency('libbson-1.0')

Also you need to add the `vapidir` option and the `--pkg` option for posix (if not included in the vapidir), like this:

```meson
add_project_arguments(['--vapidir', X, '--pkg', 'posix'], language: 'vala')
```

_X_ is the directory where the generated files are stored.


## Dependencies

* [`libmongoc-1.0`](http://mongoc.org/libmongoc/current/installing.html): the binded library

* `libbson-1.0`: installed with libmongoc, used explicitly if vapis are separated

* `posix`: used for datetime and minor details

* `glib-2.0` and `gobject-2.0`: used by Vala

* `json-glib-1.0`: used by the [BconDoc.vala](samples/BconDoc.vala) samples


## Notes

* Because the codebase to bind is fairly big, the vapi file is divided in partials file. The file itself can be easily generated with the included Python script / Makefile / Meson script.

* While the vast majority of the methods and classes have the same or a very similar name to the C counterpart, some of the names maybe a little tweaked to be more Vala-friendly.

* Deprecated or next-to-deprecation features _won't be binded_.

* The tags/releases/versions of this repository are not related to `libmongoc` versions.

* If you need only the VAPI file, you can download it from the [releases allegates](https://github.com/bynect/mongo-vapi/releases). Generating by yourself is probably better though.

* Test and samples require a running instance of mongodb (`mongod`).

* I am not sure if `--pkg posix` is required explicitly, but it is needed for datetime types.


## Changelog

* Add meson as an alternative build method.

* Add support for separated vapis for `libbson` and `libmongoc`.

* Add support for BCON notation.

* Add support for Crud operation.

Also see [TODO.md](./TODO.md).


## License

Copyright @bynect

This is free and open source software.
You can use/modify/redistribute it under the terms of the MIT license.
See LICENSE for for more details.
