class Localizegen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.0.tar.gz"
	sha256 "3a73f4212e041421fb6d0d655201eb934a5dc49fdfcb2e52d5f5c6c1bbd02753"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end