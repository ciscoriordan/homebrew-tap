class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.0.2/storescreens-v3.0.2-macos.tar.gz"
  sha256 "94f40c6f9b48f0bfd6ad4819c3b2479b27bf5a26db6c2dce05f8ba60bcf056a8"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.0.2", shell_output("#{bin}/storescreens --version")
  end
end
