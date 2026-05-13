class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.16.1/storescreens-v2.16.1-macos.tar.gz"
  sha256 "406cb602527278181e0b2a7550c5e789b2c6db9d5c122aaa96292f9696c150c6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.16.1", shell_output("#{bin}/storescreens --version")
  end
end
