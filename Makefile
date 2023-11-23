# make checksum_archive name=localizegen version=v1.1.0
checksum_archive:
	curl -L https://github.com/prongbang/$(name)/archive/refs/tags/$(version).tar.gz -o $(name)-$(version).tar.gz
	shasum -a 256 $(name)-$(version).tar.gz
	rm -rf $(name)-$(version).tar.gz

# make checksum_release name=localizegen platform=0.1.5_Darwin_x86_64 version=1.1.0
checksum_release:
	curl -L https://github.com/prongbang/$(name)/releases/download/$(version)/$(version)_$(platform).tar.gz -o $(name)-$(version)_$(platform).tar.gz
	shasum -a 256 $(name)-$(version)_$(platform).tar.gz
	rm -rf $(name)-$(version)_$(platform).tar.gz

# make checksum_localizegen
checksum_localizegen:
	make checksum_archive name=localizegen version=v1.1.6

# make checksum_analyticsgen
checksum_analyticsgen:
	make checksum_archive name=analyticsgen version=v1.0.6

# make checksum_integration_testgen
checksum_integration_testgen:
	make checksum_release name=integration_testgen platform=Darwin_arm64 version=2.0.2

# make checksum_postman_runner
checksum_postman_runner:
	make checksum_release name=postman-runner platform=Darwin_x86_64 version=0.1.5
	make checksum_release name=postman-runner platform=Darwin_arm64 version=0.1.5
