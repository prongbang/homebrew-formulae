class Watchx < Formula
  desc "Lightweight Live Reload Tool for Running Anything."
  homepage "https://github.com/prongbang/watchx"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/watchx/releases/download/0.2.0/0.2.0_Darwin_x86_64.tar.gz"
      sha256 "412ebfc67f8d4efe88ccacabe0bd3bca5d83f8af396de59d070c6e9ff71f27d2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/watchx/releases/download/0.2.0/0.2.0_Darwin_arm64.tar.gz"
      sha256 "fc04e483f9bd6cc9d6abe42b4869cf7dacdeaca10483865bb84ff0940b2951fe"
    end

    def install
      bin.install "watchx"
    end
  end

  test do
    system "#{bin}/watchx"
  end
end
