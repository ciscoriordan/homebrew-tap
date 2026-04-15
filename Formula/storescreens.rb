class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.4.1/storescreens-v1.4.1-macos.tar.gz"
  sha256 "4482bafb012d7fe26f923b0c9604c463059f700446df19ecad1eb818ebed7564"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.4.1", shell_output("#{bin}/storescreens --version")
  end
end
