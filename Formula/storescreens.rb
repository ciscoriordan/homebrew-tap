class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.7.2/storescreens-v1.7.2-macos.tar.gz"
  sha256 "beb79e927693678de152316fa8ba943b33fcc1de07d8c20911abca8629fcde5f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.7.2", shell_output("#{bin}/storescreens --version")
  end
end
