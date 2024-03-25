class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "b0ebc99f3f6d6fc59c4853660b1a1ca77410b8feda11a08fb1a452dd99b8bcd1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "c6a8bc7f468ac8f2402e36fe0b2cd2f37fdf12f506bdaf7e0a5b3ca25781d9e1"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
