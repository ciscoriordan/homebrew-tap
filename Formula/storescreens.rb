class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.6.0/storescreens-v3.6.0-macos.tar.gz"
  sha256 "1500e38f20844eccfe5d7302e14dbdff0e7180cbbf3b77877c594cd2f4b87aff"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.6.0", shell_output("#{bin}/storescreens --version")
  end
end
