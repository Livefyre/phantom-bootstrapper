.PHONY: install test deploy run

TESTS := $(shell find ./src -name "test.js")

install:
	@ # Install the app
	@echo "Installing phantom bootstrapper"
	@npm install -f
	@mkdir -p ./bin
	@cp templates/* ./bin
	@chmod -R 755 ./bin

test:
	@ # Run some mocha tests
	@./node_modules/.bin/mocha $(TESTS)

run:
	@echo "Running locally via foreman"
	@node_modules/.bin/nf start

spam:
	@echo "Mmmmm spam"
	@node src/test/spammer.js
