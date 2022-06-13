class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	url "https://github.com/prongbang/integration_testgen/archive/refs/tags/1.0.0.tar.gz"
	sha256 "448d4ce6d9521b3ee1c84a28e5d17704465d4fa51ea02f7aec403472f8952699"
	license "MIT"

	def install
		bin.install "bin/integration_testgen"
	end

	test do
		system "#{bin}/integration_testgen"
	end
end