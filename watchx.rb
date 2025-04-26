class Watchx < Formula
  desc "Lightweight Live Reload Tool for Running Anything."
  homepage "https://github.com/prongbang/watchx"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/watchx/releases/download/#{version}/#{version}_Darwin_x86_64.tar.gz"
      sha256 "0f6ee1c94decc71ac04346cc3493298b97a8809e721a33da25661eb15bff2f0b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/watchx/releases/download/#{version}/#{version}_Darwin_arm64.tar.gz"
      sha256 "7d8852bfdc431da9c1a50b8272f8be0b9c4a7f7cdbc8a09d980bdb7fe0cbe2f9"
    end

    def install
      bin.install "watchx"
    end
  end

  test do
    system "#{bin}/watchx"
  end
end