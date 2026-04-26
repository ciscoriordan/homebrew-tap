class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.5/storescreens-v2.7.5-macos.tar.gz"
  sha256 "2182a641ed16bfdfbb9e5b5fa5af86854e548b4aa0177e02cef7788ab64bf9d9"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.5", shell_output("#{bin}/storescreens --version")
  end
end
