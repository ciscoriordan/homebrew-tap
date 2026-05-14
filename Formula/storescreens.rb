class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.18.0/storescreens-v2.18.0-macos.tar.gz"
  sha256 "37fde40fe3595e3e23859782cee655153241ae74015a85ca647ddd715d508b68"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.18.0", shell_output("#{bin}/storescreens --version")
  end
end
