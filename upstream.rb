class Upstream < Formula
  desc "Upstream: A Tool for Sending Files from Client to Server on Local only."
  homepage "https://github.com/prongbang/upstream"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/upstream/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "7bb3dffca7ed598627920b21d2b94d0766d7977f245cc29b2210470f115593cf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/upstream/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "9f74ea2e78ed93681ef759bcdfc7530cc71af9442ce357576930c5bd88d00eb2"
    end

    def install
      bin.install "upstream"
    end
  end

  test do
    system "#{bin}/upstream"
  end
end
