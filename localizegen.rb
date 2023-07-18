class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.5.tar.gz"
	sha256 "738cbc1625df983309ba24c1fcd38a60e6051741f0635be38fbb908f2dbeb7d3"
	license "MIT"

	def install
		on_macos do
          bin.install "localizegen"
        end

        on_linux do
          bin.install "binary/linux/localizegen"
        end

        on_windows do
          bin.install "binary/windows/localizegen"
        end
	end

	test do
		system "#{bin}/localizegen"
	end
end