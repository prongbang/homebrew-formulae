class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.5.tar.gz"
	sha256 "291de95196b415bf20bef3db50b082c58157853fdf64230237cc0151d2b7408f"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end