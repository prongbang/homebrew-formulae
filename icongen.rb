class Icongen < Formula
  desc "Create icons for iOS, macOS, and watchOS with one command."
  homepage "https://github.com/prongbang/icongen"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prongbang/icongen/releases/download/0.1.0/0.1.0_Darwin_x86_64.tar.gz"
      sha256 "4edd863bd968b7cde08826a699b3417af33059a52497654408d6b0d8fe503bbf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/prongbang/icongen/releases/download/0.1.0/0.1.0_Darwin_arm64.tar.gz"
      sha256 "fcc989831fc59710d180698dbb3cd64588679619bd524be98fec7e5eccaa9d91"
    end

    def install
      bin.install "icongen"
    end
  end

  test do
    system "#{bin}/icongen"
  end
end
