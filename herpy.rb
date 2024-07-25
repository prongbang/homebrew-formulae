class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.3/0.1.3_Darwin_x86_64.tar.gz"
      sha256 "95191f2e7ba64bc140b7174ebaf222d2ed11c85fdcceb83e853da626b8c740f5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.3/0.1.3_Darwin_arm64.tar.gz"
      sha256 "b9c019edb8076ffe6a4c0f8d26de9b7d0af29167e05f0b597d6f467125527f5c"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
