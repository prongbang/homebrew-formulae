class Localizegen < Formula
  desc "Generate Localization tools for Mobile Application an Android, iOS"
  homepage "https://github.com/prongbang/localizegen"
  url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "0e32a9d27a65781930370d5c162f15bfa42d03dea5eb1f15bd9b532542c50b68"
  license "MIT"

  bottle :unneeded

  def install
      bin.install "localizegen"
  end

  test do
      system "#{bin}/localizegen"
  end
end