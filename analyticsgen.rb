class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.1.tar.gz"
	sha256 "c132cb9a0157b3ed28fcbc21f7a3581f1d50243de9cb1cb87917e47191743c23"
	license "MIT"

	bottle :unneeded

	def install
		bin.install "analyticsgen"
	end

	test do
		system "#{bin}/analyticsgen"
	end
end