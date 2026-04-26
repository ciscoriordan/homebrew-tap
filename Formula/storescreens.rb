class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.3/storescreens-v2.7.3-macos.tar.gz"
  sha256 "e3d3918d536fb0cd3f08a52040c2cc056ec4aad960b8ad1463611c259145aecc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.3", shell_output("#{bin}/storescreens --version")
  end
end
