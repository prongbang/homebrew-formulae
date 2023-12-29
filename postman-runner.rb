class PostmanRunner < Formula
	desc "Run multiple Postman collections with a single command."
	homepage "https://github.com/prongbang/postman-runner"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/postman-runner/releases/download/0.2.0/0.2.0_Darwin_x86_64.tar.gz"
      sha256 "d91a80abf411e1889835ddb6a8cb46b7e2b77830babe1c3c42f5b2aff75a24ff"

      def install
        bin.install "postman-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/postman-runner/releases/download/0.2.0/0.2.0_Darwin_arm64.tar.gz"
      sha256 "1d02f764592e235dbcde6439d310ef21a869f6389b55a242298fc80242145dbf"

      def install
        bin.install "postman-runner"
      end
    end
  end

	test do
		system "#{bin}/postman-runner"
	end
end