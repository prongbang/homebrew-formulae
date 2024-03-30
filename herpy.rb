class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.1/0.1.1_Darwin_x86_64.tar.gz"
      sha256 "4b28f9058de362613493d6e2358594b7ad874b8fe7b12053157b001050153d6f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.1/0.1.1_Darwin_arm64.tar.gz"
      sha256 "1b54c189eada7ab0377177dc62b72b9422d3d883eb24eb37b62a23f2339421b2"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
