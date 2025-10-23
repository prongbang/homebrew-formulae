class Upstream < Formula
  desc "Upstream: A Tool for Sending Files from Client to Server on Local only."
  homepage "https://github.com/prongbang/upstream"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/upstream/releases/download/0.1.3/0.1.3_Darwin_x86_64.tar.gz"
      sha256 "9d8a45436b928cf0ec378cdd2fd151a456395d4b670676e1e248f6e779b65141"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/upstream/releases/download/0.1.3/0.1.3_Darwin_arm64.tar.gz"
      sha256 "25e0e3bb3a0fd20fca3977cd611508c8b8c620be3ea9ffe0fa4b0dcbc9b51fee"
    end

    def install
      bin.install "upstream"
    end
  end

  test do
    system "#{bin}/upstream"
  end
end
