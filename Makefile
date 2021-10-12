SOURCE_FILES += $(shell find src -type f 2> /dev/null)

################################################################################

-include .makefiles/Makefile
-include .makefiles/pkg/js/v1/Makefile
-include .makefiles/pkg/js/v1/with-yarn.mk

.makefiles/%:
	@curl -sfL https://makefiles.dev/v1 | bash /dev/stdin "$@"

################################################################################

.DEFAULT_GOAL := dist

dist: src/iconduit.config.json node_modules $(SOURCE_FILES)
	@rm -rf "$@"

	node_modules/.bin/iconduit "$<"

	@touch "$@"
