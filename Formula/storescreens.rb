class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.3.2/storescreens-v3.3.2-macos.tar.gz"
  sha256 "58de6906df214f1dc5d41dd382aca133b2f520c562d6ebbd6306f1fe40c3c553"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.3.2", shell_output("#{bin}/storescreens --version")
  end
end
