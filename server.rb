class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.2.0/0.2.0_Darwin_x86_64.tar.gz"
      sha256 "0eacc388d1a240bf7d3db36369ea9cd334af8e1a716aedd9885a315b87747b1c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.2.0/0.2.0_Darwin_arm64.tar.gz"
      sha256 "b3a2b43831c4818c42366073987adcfda593d52d28701f29113bac10179cb2d1"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end
