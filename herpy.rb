class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "83d56b081aa401500ad0323713b4b16d7d0b2e8d2b9cb3fded51b81e887a5a59"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "216c298999a6ba192dfabf96d4eb208844dbbee9cee662aca0ef944d2e9d697a"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
