class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
  	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.5.tar.gz"
  	sha256 "8f9bc2873943d5dbcdc7fd25f5ac444cfb128a05eff81bb1370f3403f0a4a80c"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "bin/macos/analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end