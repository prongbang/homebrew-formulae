class Analyticsgen < Formula
  desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
  homepage "https://github.com/prongbang/analyticsgen"
  url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "94906f51d42949a28b35d84241449851dec3ddb9598cc1273ebbc7d908eca0fc"
  license "MIT"

  def install
    on_macos do
      bin.install "bin/macos/analyticsgen"
    end

    on_linux do
      bin.install "bin/linux/analyticsgen"
    end
  end

  test do
    system "#{bin}/macos/analyticsgen"
  end
end
