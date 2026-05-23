class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.1.1/storescreens-v3.1.1-macos.tar.gz"
  sha256 "9b003ff8cc2b2ee09b5e6bad3f0dc28db61b1fe50a9838e40df55226a2a3eb5c"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.1.1", shell_output("#{bin}/storescreens --version")
  end
end
