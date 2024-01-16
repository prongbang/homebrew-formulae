class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "235da825baa2000b29cf4e8e243f6c270c3c056a3f3838732b2f5b2ff784a3a4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "856f795116e15ec692eb8d322917ac301a7faa4e1f7d79edde32a08ef24d566f"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end