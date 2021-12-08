class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.3.tar.gz"
	sha256 "028c94175a8123f492caba75f5c3cb72c3bb5c22305f6c6b4005b5f2c37931b9"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end