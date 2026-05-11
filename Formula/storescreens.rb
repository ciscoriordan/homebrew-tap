class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.15.0/storescreens-v2.15.0-macos.tar.gz"
  sha256 "081ca0511bfb782895da396bee57af1e8bb025d98aa8f9141b44bdc00f1cabed"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.15.0", shell_output("#{bin}/storescreens --version")
  end
end
