class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.7/storescreens-v2.7.7-macos.tar.gz"
  sha256 "d4f3c75c7f877b163ba30d885b2bf7e2319d54007f0ba15a62399638ee1989b4"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.7", shell_output("#{bin}/storescreens --version")
  end
end
