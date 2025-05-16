class Watchx < Formula
  desc "Lightweight Live Reload Tool for Running Anything."
  homepage "https://github.com/prongbang/watchx"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/watchx/releases/download/#{version}/#{version}_Darwin_x86_64.tar.gz"
      sha256 "c758acf731e48f4a05a334a5d0ade8f57d87c870261c867bc5fd97e49dc5786b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/watchx/releases/download/#{version}/#{version}_Darwin_arm64.tar.gz"
      sha256 "220415fa243d8a8af114d102019e4c9402ef1a6a6f64fb5ec8825945f64b5043"
    end

    def install
      bin.install "watchx"
    end
  end

  test do
    system "#{bin}/watchx"
  end
end