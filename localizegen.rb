class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.3.tar.gz"
	sha256 "b8ed59061f52531772f24665aeaa458f0faf8949a7d586652d3796e074893654"
	license "MIT"

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end