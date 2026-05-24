class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.4.0/storescreens-v3.4.0-macos.tar.gz"
  sha256 "819aa2285e323ee931798b18a7a25252ccfd8b726d73a1d7edabc4ec6216822e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.4.0", shell_output("#{bin}/storescreens --version")
  end
end
