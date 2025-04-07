class Watchx < Formula
  desc "Lightweight Live Reload Tool for Running Anything."
  homepage "https://github.com/prongbang/watchx"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/watchx/releases/download/0.2.1/0.2.1_Darwin_x86_64.tar.gz"
      sha256 "d91904b56be12223812b70859ce421b988dbb79262369352e8cd9d7fb5011e5a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/watchx/releases/download/0.2.1/0.2.1_Darwin_arm64.tar.gz"
      sha256 "e795ed783c8bc6dd658e5832c26ff1804ff181c07605bda633f6bec64ffd18a5"
    end

    def install
      bin.install "watchx"
    end
  end

  test do
    system "#{bin}/watchx"
  end
end
