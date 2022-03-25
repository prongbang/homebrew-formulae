class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.4.tar.gz"
	sha256 "4d4561a10b6556aa3e7132ab4424dd50df6e782b9ecbee7c79da14b0cf3aea76"
	license "MIT"

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end