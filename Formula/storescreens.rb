class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.16.2/storescreens-v2.16.2-macos.tar.gz"
  sha256 "10a128083eaa1972ae73d1e37f857e00dec726f0bdd024cf3bc45a7f82e16a38"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.16.2", shell_output("#{bin}/storescreens --version")
  end
end
