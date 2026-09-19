class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.12.0/storescreens-v3.12.0-macos.tar.gz"
  sha256 "f4b5d4209595542d4e3b57177f0cf3ca83bb01747b0b6438c983a01118de09c0"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.12.0", shell_output("#{bin}/storescreens --version")
  end
end
