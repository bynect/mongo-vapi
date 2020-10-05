.DEFAULT: compose
.SILENT:
.PHONY: compose license clean help test verbose quiet example

compose: clean
	echo "Generating VAPI file"
	python3 ./compose.py

verbose: clean
	echo "Generating VAPI file [debug]\n"
	python3 ./compose.py --verbose

quiet: clean
	python3 ./compose.py --quiet 

license:
	python3 ./compose.py --license

clean:
	mkdir -p build vapi
	rm -rf vapi/**
	rm -rf build/**

test: test-status

test-status: build-status
	./build/StatusTest

example: example-hello

example-hello: build-hello
	./build/HelloMongo

example-crud: build-crud
	./build/Cruds

example-bcon: build-bcon
	./build/BconDoc

build-crud: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/Cruds example/Cruds.vala

build-status: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/StatusTest test/StatusTest.vala

build-hello: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/HelloMongo example/HelloMongo.vala

build-bcon: clean quiet
	echo "Requires json-glib-1.0\n"
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --pkg json-glib-1.0 --vapidir ./vapi -o ./build/BconDoc example/BconDoc.vala

help:
	echo "help: display this help\n"
	echo "compose: generates VAPI file from partials\n \
	\tfor more info use python compose --help\n"
	echo "license: display the project license\n"
	echo "build-*: builds vala example/test\n \
	\tpossible value: hello, status, crud\n"
	echo "clean: removes pycache, composed vapi and executable\n"
	echo "example-*: starts and build example\n \
	\tpossible value: hello, crud\n"
	echo "test-*: starts and build test\n \
	\tpossible value: status\n"
