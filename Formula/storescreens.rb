class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.2.3/storescreens-v3.2.3-macos.tar.gz"
  sha256 "c314c654f9a169a84ef840b437e69658a46048d2199e4aca390d412288a4e851"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.2.3", shell_output("#{bin}/storescreens --version")
  end
end
