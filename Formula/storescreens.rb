class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.6/storescreens-v2.0.6-macos.tar.gz"
  sha256 "5ffd41fbe94cc5ec8abdf0ab00a6451f79e674a890b2a49cdc4e9d4d5e41d06e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.6", shell_output("#{bin}/storescreens --version")
  end
end
