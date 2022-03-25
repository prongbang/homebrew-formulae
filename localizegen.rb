class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.2.tar.gz"
	sha256 "bf8cd696cb151897e2b70c41c15dbcadea7a930af2f514886fe4c863171b2057"
	license "MIT"

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end