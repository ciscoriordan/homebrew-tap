class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.4.0/storescreens-v2.4.0-macos.tar.gz"
  sha256 "c40d62c43dc37565631f9e2266273a6ea904f3bf1dca884bfcbd907863a3e698"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.4.0", shell_output("#{bin}/storescreens --version")
  end
end
