class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.5.0/storescreens-v2.5.0-macos.tar.gz"
  sha256 "143c96d381e48eeb089a14d869d5933effca85ff1a2b7a24c79cbe7917a1d2ea"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.5.0", shell_output("#{bin}/storescreens --version")
  end
end
