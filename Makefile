# make checksum name=localizegen version=v1.1.0
checksum:
	curl -L https://github.com/prongbang/$(name)/archive/refs/tags/$(version).tar.gz -o $(name)-$(version).tar.gz
	shasum -a 256 $(name)-$(version).tar.gz
	rm -rf $(name)-$(version).tar.gz

# make checksum_localizegen
checksum_localizegen:
	make checksum name=localizegen version=v1.1.0

# make checksum_analyticsgen
checksum_analyticsgen:
	make checksum name=analyticsgen version=v1.0.0

# make checksum_integration_testgen
checksum_integration_testgen:
	make checksum name=integration_testgen version=2.0.0