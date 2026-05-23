class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.2.2/storescreens-v3.2.2-macos.tar.gz"
  sha256 "e1d1cf23a67bdec2cac80b3589a81e50390646fe6df00185f9a90aeb46efd652"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.2.2", shell_output("#{bin}/storescreens --version")
  end
end
