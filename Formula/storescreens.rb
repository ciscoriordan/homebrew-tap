class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.3.0/storescreens-v3.3.0-macos.tar.gz"
  sha256 "d1bf93ceaaf1b22fa9cd0b732b043c0a7e38b1f7f978175adfa123e110481352"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.3.0", shell_output("#{bin}/storescreens --version")
  end
end
