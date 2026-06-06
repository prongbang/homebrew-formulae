class Watchx < Formula
  desc "Lightweight live reload tool for running anything"
  homepage "https://github.com/prongbang/watchx"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/watchx/releases/download/v0.3.1/0.3.1_Darwin_arm64.tar.gz"
      sha256 "83bdade7dceb1a7c6e751d093f90c904e0551cf4bed4e41916cde960ed4c26cf"
    else
      url "https://github.com/prongbang/watchx/releases/download/v0.3.1/0.3.1_Darwin_x86_64.tar.gz"
      sha256 "44043aab8f4f51243d36ae9613491b36f683affa95cda168596f00b2c0d00623"
    end
  end

  on_linux do
    url "https://github.com/prongbang/watchx/releases/download/v0.3.1/0.3.1_Linux_x86_64.tar.gz"
    sha256 "14666f6530bea4cd019c923c7023bea5083129c06d4ae32d7e095da1b6f5c734"
  end

  def install
    bin.install "watchx"
  end

  test do
    assert_match "watchx", shell_output("#{bin}/watchx --help")
  end
end
