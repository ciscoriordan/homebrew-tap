class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.3.3/storescreens-v3.3.3-macos.tar.gz"
  sha256 "ed413a209168b1e27be7f415319a07ac9f2c1d611d44f3d4c849b6bed0334c92"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.3.3", shell_output("#{bin}/storescreens --version")
  end
end
