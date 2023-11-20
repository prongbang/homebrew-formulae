class IntegrationTestgen < Formula
	desc "Generate Page Object Model dart class by spec.yml"
	homepage "https://github.com/prongbang/integration_testgen"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/integration_testgen/archive/refs/tags/1.1.0.tar.gz"
      sha256 "91a5055771f8f381c663aa51a9f45aa9a9b4a86519444815fc786d150fbe4af4"

      def install
        bin.install "bin/integration_testgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/integration_testgen/archive/refs/tags/2.0.0.tar.gz"
      sha256 "74e795324d91f592254f4304c6eb8a5003af38fb9dd818a92854114958c870e0"

      def install
        bin.install "bin/integration_testgen"
      end
    end
  end

	test do
		system "#{bin}/integration_testgen"
	end
end