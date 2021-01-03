.DEFAULT_GOAL := help

.PHONY : compose license clean help verbose quiet

.SILENT :

BUILD_DIR := "build"
SAMPLE_DIR := "samples"
TEST_DIR := "test"
VAPI_DIR := "vapi"

SEPARATED_MACRO = $${SEPARATED_VAPI+"-D SEPARATED_VAPI"}
SEPARATED_PKG = $${SEPARATED_VAPI+"--pkg libbson-1.0"}
ONEFILE := $${SEPARATED_VAPI-"--onefile"}


clean:
	mkdir -p $(BUILD_DIR) $(VAPI_DIR) \
	&& rm -rf vapi/* \
	&& rm -rf build/*

compose: clean
	python3 ./compose.py $(ONEFILE)

verbose: clean
	python3 ./compose.py --verbose $(ONEFILE)

quiet: clean
	python3 ./compose.py --quiet $(ONEFILE)


test-status: build-status
	./$(BUILD_DIR)/StatusTest

example-hello: build-hello
	./$(BUILD_DIR)/HelloMongo

example-crud: build-crud
	./$(BUILD_DIR)/Cruds

example-bcon: build-bcon
	./$(BUILD_DIR)/BconDoc


build-status: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 $(shell echo $(SEPARATED_PKG)) $(shell echo $(SEPARATED_MACRO)) \
	--vapidir ./$(VAPI_DIR)-o ./$(BUILD_DIR)/StatusTest $(TEST_DIR)/StatusTest.vala

build-crud: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 $(shell echo $(SEPARATED_PKG)) $(shell echo $(SEPARATED_MACRO)) \
	--vapidir ./$(VAPI_DIR) -o ./$(BUILD_DIR)/Cruds $(SAMPLE_DIR)/Cruds.vala

build-hello: clean quiet
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 $(shell echo $(SEPARATED_PKG)) $(shell echo $(SEPARATED_MACRO)) \
	--vapidir ./$(VAPI_DIR) -o ./$(BUILD_DIR)/HelloMongo $(SAMPLE_DIR)/HelloMongo.vala

build-bcon: clean quiet
	echo "Requires json-glib-1.0\n"
	valac --pkg glib-2.0 --pkg posix --pkg libmongoc-1.0 --pkg json-glib-1.0 $(shell echo $(SEPARATED_PKG)) $(shell echo $(SEPARATED_MACRO)) \
	--vapidir ./$(VAPI_DIR) -o ./$(BUILD_DIR)/BconDoc $(SAMPLE_DIR)/BconDoc.vala


help:
	echo "help: display this help message\n"
	echo "compose: generates VAPI file from partials"
	echo "\tfor more info use python compose --help\n"
	echo "license: display the project license\n"
	echo "build-*: builds vala example/test"
	echo "\t[hello, status, crud, bcon]\n"
	echo "clean: removes composed vapi and executable\n"
	echo "example-*: starts and build example"
	echo "\t[hello, crud, bcon]\n"
	echo "test-*: starts and build test"
	echo "\t[status]\n"

license:
	python3 ./compose.py --license
