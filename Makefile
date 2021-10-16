# make checksum_localizegen version=v1.1.0
checksum_localizegen:
	curl https://github.com/prongbang/localizegen/archive/refs/tags/$(version).tar.gz --output localizegen.tar.gz
	shasum -a 256 localizegen.tar.gz
	rm -rf localizegen.tar.gz

# make checksum_analyticsgen version=v1.0.0
checksum_analyticsgen:
	curl https://github.com/prongbang/localizegen/archive/refs/tags/$(version).tar.gz --output analyticsgen.tar.gz
	shasum -a 256 analyticsgen.tar.gz
	rm -rf analyticsgen.tar.gz