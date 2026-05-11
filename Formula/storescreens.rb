class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.13.0/storescreens-v2.13.0-macos.tar.gz"
  sha256 "ffcddbc695b04b9eae9a0f818c66aef666d61318b3dafd54635c15d6a1a1ecf5"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.13.0", shell_output("#{bin}/storescreens --version")
  end
end
