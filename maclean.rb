class MacClean < Formula
  version "1.0.0"
  desc "🗑️ Clean script for macOS"
  homepage "https://github.com/prongbang/maclean"
  if Hardware::CPU.intel?
    url "https://github.com/prongbang/maclean/releases/download/v#{version}/maclean-#{version}-mac-amd64.tar.gz"
    sha256 ""
  else
    url "https://github.com/prongbang/maclean/releases/download/v#{version}/maclean-#{version}-mac-arm64.tar.gz"
    sha256 ""
  end
  license "MIT"

  def install
    bin.install "maclean"
  end

  test do
    assert_match "🗑️  Clean script for macOS by github.com/prongbang", shell_output("#{bin}/maclean -h", 2)
  end
end