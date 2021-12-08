class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.4.tar.gz"
	sha256 "5b4756bcaa2a01f3ffbd0f674f18f61d97ed27ab94c6b6d30872538e14c2bfc3"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end