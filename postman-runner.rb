class PostmanRunner < Formula
	desc "Run multiple Postman collections with a single command."
	homepage "https://github.com/prongbang/postman-runner"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/postman-runner/releases/download/0.1.5/0.1.5_Darwin_x86_64.tar.gz"
      sha256 "3cc9505968974c597b823be8d1d3ae7d850ca2cf36619cdc398b8f76a5bdd635"

      def install
        bin.install "postman-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/postman-runner/releases/download/0.1.5/0.1.5_Darwin_arm64.tar.gz"
      sha256 "6937d16f8cf22cf83b71dae730b8ece4f8c883c7eb1453fc03d6caffbcd8456b"

      def install
        bin.install "postman-runner"
      end
    end
  end

	test do
		system "#{bin}/postman-runner"
	end
end