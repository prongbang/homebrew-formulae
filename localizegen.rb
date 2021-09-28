class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.6.tar.gz"
	sha256 "38b6cef6e6dda75837fe749752843ab1700233175fe508602b773009275570ad"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end