-include .makefiles/Makefile
-include .makefiles/pkg/js/v1/Makefile
-include .makefiles/pkg/js/v1/with-yarn.mk

.makefiles/%:
	@curl -sfL https://makefiles.dev/v1 | bash /dev/stdin "$@"

################################################################################

.DEFAULT_GOAL := release

.PHONY: release
release: artifacts/dist.zip

################################################################################

artifacts/dist.zip: artifacts/dist
	@mkdir -p "$(@D)"

	zip -j -r - "$<" > "$@"

artifacts/dist: artifacts/link-dependencies.touch $(JS_SOURCE_FILES)
	@rm -rf "$@"

	$(JS_EXEC) iconduit src/iconduit.config.json

	@touch "$@"
