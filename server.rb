class Server < Formula
  desc "Rust-based HTTP server, serves any directory, inspired by python -m http.server."
  homepage "https://github.com/prongbang/server"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/server/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "dad3564d29b826e6d316f0e3cd7bef7153706e37fc9b2eaa73d356c3fe22f6fa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/server/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "bbc95603df1f468bdbdb7b280855e0b4c64f80b6bba00237e96932b22e1b3c05"
    end

    def install
      bin.install "server"
    end
  end

  test do
    system "#{bin}/server"
  end
end
