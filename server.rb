class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.2.3/0.2.3_Darwin_x86_64.tar.gz"
      sha256 "c7edd63fc1042fcb8f9cdf77ac1f78825ab45674a7b39e69ed7ae6ca1d7294be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.2.3/0.2.3_Darwin_arm64.tar.gz"
      sha256 "22ad13b770569086e349bef2f712c87af6ca3b8a369a5a11df6ee83ad81357d2"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end
