class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.10.tar.gz"
	sha256 "f47a6bfe620d2a94522179228e6f1cce8319406051cc38511d9c0a1bd9109b18"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end