class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.9.0/storescreens-v2.9.0-macos.tar.gz"
  sha256 "02eb32d7546c641199c055b675e5f29353835c6e82f5a31d3fa78734581cd5b3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.9.0", shell_output("#{bin}/storescreens --version")
  end
end
