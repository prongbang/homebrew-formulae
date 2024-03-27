class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "5ad91d4170b381b1cd4149d53a7c6f8a7ba3df2473fe204f1a8ee757343e8232"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "a03496b0ce61c910f97583bee9f289281e654bc47882289e644e0e47733794ae"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
