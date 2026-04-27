class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.6/storescreens-v2.7.6-macos.tar.gz"
  sha256 "c85720e24c1a7d625f75944821ad3f0fd260d294f10f8bf565e93beaf72d9d16"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.6", shell_output("#{bin}/storescreens --version")
  end
end
