class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.8/storescreens-v2.0.8-macos.tar.gz"
  sha256 "f37dc021a37f1bb2ca76154dbd72fd0045229c99f64223c6ebb218acfb4a0bbb"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.8", shell_output("#{bin}/storescreens --version")
  end
end
