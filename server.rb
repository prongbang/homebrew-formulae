class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.2.2/0.2.2_Darwin_x86_64.tar.gz"
      sha256 "b6aad6aa21a1fe1beaa6bbb2013ea3ceff5f6acbc335159dce8fd469d1b1f03c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.2.2/0.2.2_Darwin_arm64.tar.gz"
      sha256 "f131f853e30eb1d8c1622171836fbed9322aaba7a59dbd5ddd5f27d84e51dd00"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end
