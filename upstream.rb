class Upstream < Formula
  desc "Upstream: A Tool for Sending Files from Client to Server on Local only."
  homepage "https://github.com/prongbang/upstream"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/upstream/releases/download/0.1.2/0.1.2_Darwin_x86_64.tar.gz"
      sha256 "5ebf0b9f915101f641312216255f1fea9cd95741ef48c639840b11e240286fbe"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/upstream/releases/download/0.1.2/0.1.2_Darwin_arm64.tar.gz"
      sha256 "de9ea37379ad54cc15cfd50a7b986ea02f5af143728b87c2ca251f07be371315"
    end

    def install
      bin.install "upstream"
    end
  end

  test do
    system "#{bin}/upstream"
  end
end
