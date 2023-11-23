class Analyticsgen < Formula
	desc "Google Sheet Analytics Generator supported Flutter, Android, and iOS"
	homepage "https://github.com/prongbang/analyticsgen"
  	url "https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.6.tar.gz"
  	sha256 "94906f51d42949a28b35d84241449851dec3ddb9598cc1273ebbc7d908eca0fc"
	license "MIT"

	def install
		bin.install "bin/macos/analyticsgen"
	end

  on_macos do
    def install
        bin.install "bin/macos/analyticsgen"
    end
  end

  on_linux do
    def install
      bin.install "bin/linux/analyticsgen"
    end
  end

  on_window do
    def install
      bin.install "bin/windows/analyticsgen.exe"
    end
  end

	test do
		system "#{bin}/analyticsgen"
	end
end