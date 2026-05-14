class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.18.1/storescreens-v2.18.1-macos.tar.gz"
  sha256 "780f2e9f537b725cec4dc81850f35188b7b04d31d82243e00e53588217f959dd"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.18.1", shell_output("#{bin}/storescreens --version")
  end
end
