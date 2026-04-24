class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.1/storescreens-v2.0.1-macos.tar.gz"
  sha256 "8f1ffa31f466c0b9e72036b3103557115560827733bcea964b2cac826002b54f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.1", shell_output("#{bin}/storescreens --version")
  end
end
