class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "09191d0b2b84dcd6fb9866deb73abc9d86278f1835a5f12be608073016f20a6b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "8d3426fb4341059a8808e1c12dd20ea82c589692b93673b7e12477c463c63877"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
