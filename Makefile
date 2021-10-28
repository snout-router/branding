-include .makefiles/Makefile
-include .makefiles/pkg/js/v1/Makefile
-include .makefiles/pkg/js/v1/with-yarn.mk

.makefiles/%:
	@curl -sfL https://makefiles.dev/v1 | bash /dev/stdin "$@"

################################################################################

.DEFAULT_GOAL := artifacts/dist

artifacts/dist: node_modules $(JS_SOURCE_FILES)
	@rm -rf "$@"

	node_modules/.bin/iconduit src/iconduit.config.json

	@touch "$@"
