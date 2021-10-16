class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.9.tar.gz"
	sha256 "bf526886547d5e68beec2048acdaa27506aa3102f1ab310e266d5c2f5aa1de0b"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end