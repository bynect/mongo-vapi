.DEFAULT := gen
.SILENT: help gen license build test
.PHONY: help gen license build test

gen:
	echo "Generating VAPI file"
	./compose.py
	echo "Licensed under MIT, see LICENSE (or make license)"

license:
	cat ./LICENSE

build: gen
	valac --pkg glib-2.0 --pkg libmongoc-1.0 --vapidir . test/crud.vala -o crud

test: build
	./crud

help:
	echo HELP
	echo ===================
	echo help: this
