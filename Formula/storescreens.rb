class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.15.1/storescreens-v2.15.1-macos.tar.gz"
  sha256 "483661ef50212fe208946d75b36e2ab75acb9a99d2263808a76ba0b3cbab26a9"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.15.1", shell_output("#{bin}/storescreens --version")
  end
end
