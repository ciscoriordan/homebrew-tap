class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.5.3/storescreens-v1.5.3-macos.tar.gz"
  sha256 "630343c1bc01bbf1bcb781d7222a089b04ea16b04b79ce39bb620fc7264a2f74"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.5.3", shell_output("#{bin}/storescreens --version")
  end
end
