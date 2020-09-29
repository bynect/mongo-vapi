.DEFAULT: compose
.SILENT: compose license clean help test-status test test-crud verbose build-crud build-status
.PHONY: compose license clean help test-status test test-crud verbose build-crud build-status

compose: clean
	echo "Generating VAPI file"
	python3 ./compose.py

verbose: clean
	echo "Generating VAPI file"
	python3 ./compose.py --verbose

license:
	python3 ./compose.py --license

clean:
	find . -type d -name  '__pycache__' -exec rm -rf {} + 2> /dev/null
	find . -name  'test_*' -exec rm -f {} + 2> /dev/null
	find . -name  'libmongoc-1.0.vapi' -exec rm -f {} + 2> /dev/null

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
	./test_crud

test-status: build-status
	./test_status

build-crud: clean compose
	valac --pkg glib-2.0 --pkg libmongoc-1.0 --vapidir . -o test_crud test/crud.vala

build-status: clean compose
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --vapidir . -o test_status test/status.vala
