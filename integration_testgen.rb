class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.1/2.0.1_Darwin_arm64.tar.gz"
      sha256 "ed2ce234c9b46914d60ad28c9e8a85feee4a938431b16dd486f0355eabea2a32"

      def install
        bin.install "bin/integration_testgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.1/2.0.1_Darwin_arm64.tar.gz"
      sha256 "ed2ce234c9b46914d60ad28c9e8a85feee4a938431b16dd486f0355eabea2a32"

      def install
        bin.install "bin/integration_testgen"
      end
    end
  end

	test do
		system "#{bin}/integration_testgen"
	end
end