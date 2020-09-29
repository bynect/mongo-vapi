.DEFAULT: compose
.SILENT: compose license clean help test-status test test-crud verbose build-crud build-status quiet
.PHONY: compose license clean help test-status test test-crud verbose build-crud build-status quiet

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
	clear
	find . -type d -name  'vapi' -exec rm -rf {} + 2> /dev/null
	find . -type d -name  'build' -exec rm -rf {} + 2> /dev/null

help:
	echo "help: this message"
	echo "compose: generates VAPI file"
	echo "license: ouptus license"
	echo "build: builds test"
	echo "test-crud: builds and start crud test"
	echo "test-status: builds and start status test"
	echo "clean: removes pycache and test"

test: test-status

test-crud: build-crud
	./build/test_crud

test-status: build-status
	./build/test_status

build-crud: clean quiet
	mkdir -p build 2> /dev/null
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/test_crud test/crud.vala

build-status: clean quiet
	mkdir -p build 2> /dev/null
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir ./vapi -o ./build/test_status test/status.vala
