class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.2/storescreens-v2.7.2-macos.tar.gz"
  sha256 "d4260886e3613d298ce2a0b52f549e06ad445c23b347217ae2227e6c9ac8dc0a"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.2", shell_output("#{bin}/storescreens --version")
  end
end
