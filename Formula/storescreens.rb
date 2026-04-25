class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.4.3/storescreens-v2.4.3-macos.tar.gz"
  sha256 "908c321229182536b125ead5bb47f5fa30bafe479c69eb243f038e49c5d71454"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.4.3", shell_output("#{bin}/storescreens --version")
  end
end
