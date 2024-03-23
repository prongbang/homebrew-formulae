class Herpy < Formula
  desc "Herpy API Gateway write in Rust"
  homepage "https://github.com/prongbang/herpy"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "61bd63b820dd1dda4854f0109e6fea0184df9194f7bef9d3dd68b6f1251fa23e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/herpy/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "d4a72afe90cb82d9daf5a7cc49e94e7cc46e36a637a2a369127607152b07681b"
    end

    def install
      bin.install "herpy"
    end
  end

  test do
    system "#{bin}/herpy"
  end
end
