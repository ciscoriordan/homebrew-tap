class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.18.2/storescreens-v2.18.2-macos.tar.gz"
  sha256 "ff3ad41d6d136516be9e98481aef8e1ad3be25f14b46130671e445db413bf95d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.18.2", shell_output("#{bin}/storescreens --version")
  end
end
