class PostmanRunner < Formula
	desc "Run multiple Postman collections with a single command."
	homepage "https://github.com/prongbang/postman-runner"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/postman-runner/releases/download/0.3.0/0.3.0_Darwin_x86_64.tar.gz"
      sha256 "97ba150ecb07ea07e2798f98580461ff319f633e9294627aaf1dc1e5ca38540b"

      def install
        bin.install "postman-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/postman-runner/releases/download/0.3.0/0.3.0_Darwin_arm64.tar.gz"
      sha256 "e7f7d619f35c611c60faf8af904d0fc942087392207ecce6c87a32e6bbe24f34"

      def install
        bin.install "postman-runner"
      end
    end
  end

	test do
		system "#{bin}/postman-runner"
	end
end