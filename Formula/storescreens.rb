class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.6.0/storescreens-v2.6.0-macos.tar.gz"
  sha256 "3f72e059df7d0da72ee737626186f68e0e65bf5566804829b4b005f67207a842"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.6.0", shell_output("#{bin}/storescreens --version")
  end
end
