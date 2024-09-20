class PostmanRunner < Formula
	desc "Run multiple Postman collections with a single command."
	homepage "https://github.com/prongbang/postman-runner"
	license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/postman-runner/releases/download/0.3.1/0.3.1_Darwin_x86_64.tar.gz"
      sha256 "94d3e42a38ff7a3919beac06771be346addc7e3bc79df69ce58532cca6812e7c"

      def install
        bin.install "postman-runner"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/postman-runner/releases/download/0.3.1/0.3.1_Darwin_arm64.tar.gz"
      sha256 "a0b3425ee384f16744864c1699ec18cba9e0fee5e3634b7160ed60c38e69f709"

      def install
        bin.install "postman-runner"
      end
    end
  end

	test do
		system "#{bin}/postman-runner"
	end
end