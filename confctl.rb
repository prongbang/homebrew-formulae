class Confctl < Formula
  desc "Confctl: A Tool for Obfuscate code"
  homepage "https://github.com/prongbang/confctl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/confctl/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "cbdf7ba6eb0b618dc8d147c81e66c3e695ca2790c3bd67bbdb8dd431e25f9e5c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/confctl/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "b2c9d468309bdaf34624410ca20f50c5edb45b70dc9a8a25f89947ad35fb13ff"
    end

    def install
      bin.install "confctl"
    end
  end

  test do
    system "#{bin}/confctl"
  end
end
