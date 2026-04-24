class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.7/storescreens-v2.0.7-macos.tar.gz"
  sha256 "92b1c8786489a80cc42f8c3010c2113e46c766c2f03d39065213ef0d7aae8a73"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.7", shell_output("#{bin}/storescreens --version")
  end
end
