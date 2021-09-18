class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.0.tar.gz"
	sha256 "b2d2760a20ba2a09bf5e5c65a0e110d987597c91b5c43f2085777e480bdd78da"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end