.DEFAULT: compose
.SILENT: compose license clean help test build
.PHONY: compose license clean help test build 

compose:
	echo "Generating VAPI file\n"
	python3 ./compose.py

license:
	python3 ./compose.py --license

clean:
	find . -type d -name  '__pycache__' -exec rm -rf {} +
	rm -f crud
	echo "Removed `crud` and `__pycache__/`"

help:
	echo "help: this message"
	echo "compose: generates VAPI file"
	echo "license: ouptus license"
	echo "build: builds test"
	echo "test: builds and start test"
	echo "clean: removes pycache and test"

test: build
	./crud

build: compose
	valac --pkg glib-2.0 --pkg libmongoc-1.0 --vapidir . -o crud test/crud.vala
