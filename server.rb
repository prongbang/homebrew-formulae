class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.2.1/0.2.1_Darwin_x86_64.tar.gz"
      sha256 "fc67c65171dfa8024efdbe79eff4c2967f3df4c57a234f3258ff5258d641a219"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.2.1/0.2.1_Darwin_arm64.tar.gz"
      sha256 "b5f3438f09a3f258cb7c8c2d527aebbeb54aaf5e33c15d7b7d20b6f1e84b397c"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end
