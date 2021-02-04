# For local testing, use `make build`

gen:
	@find src/ -name '*.css' -exec cat {} \; > src/validations/all
	@cat src/validations/meta.mapcss src/validations/all > src/Iran_Specific.validator.mapcss
	@rm src/validations/all

build: gen
	cd src && \
	zip -r ../Iran-Specific-Rules.zip Iran_Specific.validator.mapcss icon