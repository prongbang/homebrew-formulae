class Localizegen < Formula
	desc "Generate Localization tools for Mobile Application an Android, iOS"
	homepage "https://github.com/prongbang/localizegen"
	url "https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.6.tar.gz"
	sha256 "9e134487f37b9de2900e8daffaea8ee4bc0d1a68d2dffe324a40d8e05835e623"
	license "MIT"

	def install
		bin.install "localizegen"
	end

	test do
		system "#{bin}/localizegen"
	end
end
