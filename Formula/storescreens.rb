class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.7.0/storescreens-v1.7.0-macos.tar.gz"
  sha256 "1d1cb9f3809aab7a2b2d37586d08635cf69b2ddd2b74286a97d975bc8f77bb94"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.7.0", shell_output("#{bin}/storescreens --version")
  end
end
