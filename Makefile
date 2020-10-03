.DEFAULT: compose
.SILENT:
.PHONY: compose license clean help test verbose quiet example test-crud test-status example-hello

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
	rm -rf vapi/**
	rm -rf build/**
	mkdir -p build 2> /dev/null

help:
	echo "help: this message"
	echo "compose: generates VAPI file"
	echo "license: ouptus license"
	echo "build: builds test"
	echo "test-crud: builds and start crud test"
	echo "test-status: builds and start status test"
	echo "clean: removes pycache and test"
	echo "example: build and start usage example"
	echo "compose.py options:\n"
	python3 ./compose.py --help

test: test-status

test-crud: build-crud
	./build/CrudTest

test-status: build-status
	./build/StatusTest

example: example-hello

example-hello: build-hello
	./build/HelloMongo

build-crud: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/CrudTest test/CrudTest.vala

build-status: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/StatusTest test/StatusTest.vala

build-hello: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/HelloMongo example/HelloMongo.vala
