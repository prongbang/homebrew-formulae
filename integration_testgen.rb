class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.2/2.0.2_Darwin_arm64.tar.gz"
      sha256 "ca9426b024056a1855bad2dcf280d2f6ac24d4da7a6743ddac4763b398baef4e"

      def install
        bin.install "integration_testgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.2/2.0.2_Darwin_arm64.tar.gz"
      sha256 "ca9426b024056a1855bad2dcf280d2f6ac24d4da7a6743ddac4763b398baef4e"

      def install
        bin.install "integration_testgen"
      end
    end
  end

	test do
		system "#{bin}/integration_testgen"
	end
end