class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	url "https://github.com/prongbang/integration_testgen/archive/refs/tags/1.0.1.tar.gz"
	sha256 "4a8530d6528750ab23ddb39eeab49e026dca7e13be63552803f51e36150a826b"
	license "MIT"

	def install
		bin.install "bin/integration_testgen"
	end

	test do
		system "#{bin}/integration_testgen"
	end
end