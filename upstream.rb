class Upstream < Formula
  desc "Upstream: A Tool for Sending Files from Client to Server on Local only."
  homepage "https://github.com/prongbang/upstream"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/upstream/releases/download/0.1.1/0.1.1_Darwin_x86_64.tar.gz"
      sha256 "9a3507eaf68bb2f174d618859782ce4bf7ce73f9ca6bdcca1aa8c0a4feabe110"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/upstream/releases/download/0.1.1/0.1.1_Darwin_arm64.tar.gz"
      sha256 "b2c07ceb6ae02f4113676f7294575139780bd4d8cc99c3d070660776300f9965"
    end

    def install
      bin.install "upstream"
    end
  end

  test do
    system "#{bin}/upstream"
  end
end
