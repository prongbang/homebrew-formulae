class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	url "https://github.com/prongbang/integration_testgen/archive/refs/tags/1.1.0.tar.gz"
	sha256 "91a5055771f8f381c663aa51a9f45aa9a9b4a86519444815fc786d150fbe4af4"
	license "MIT"

	def install
		bin.install "bin/integration_testgen"
	end

	test do
		system "#{bin}/integration_testgen"
	end
end