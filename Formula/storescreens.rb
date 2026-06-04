class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.5.0/storescreens-v3.5.0-macos.tar.gz"
  sha256 "f9c96c783a007f88c140aa545eec639f4910b3b08ab427fc271a8b8d1d9f56bc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.5.0", shell_output("#{bin}/storescreens --version")
  end
end
