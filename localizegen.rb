class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.3.tar.gz"
	sha256 "3a73f4212e041421fb6d0d655201eb934a5dc49fdfcb2e52d5f5c6c1bbd02753"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end