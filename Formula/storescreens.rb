class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.7.4/storescreens-v1.7.4-macos.tar.gz"
  sha256 "005f10a6189fc2a97b116f8e0dd9b11e52ba1845a464bd2bd4460f572bc0d6df"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.7.4", shell_output("#{bin}/storescreens --version")
  end
end
