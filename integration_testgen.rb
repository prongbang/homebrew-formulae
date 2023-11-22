class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.1/2.0.1_Darwin_arm64.tar.gz"
      sha256 "733000db2f3051638b26173c8376bbd526b5a867d1b4b2195040e4c2be93a45f"

      def install
        bin.install "bin/integration_testgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/integration_testgen/releases/download/2.0.1/2.0.1_Darwin_arm64.tar.gz"
      sha256 "733000db2f3051638b26173c8376bbd526b5a867d1b4b2195040e4c2be93a45f"

      def install
        bin.install "bin/integration_testgen"
      end
    end
  end

	test do
		system "#{bin}/integration_testgen"
	end
end