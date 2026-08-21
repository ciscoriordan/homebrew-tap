class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.11.2/storescreens-v3.11.2-macos.tar.gz"
  sha256 "9fe4ffb8617c2cbe537276c932fc2d7c1c9dfb1a02f73a7f213a57e90701e88c"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.11.2", shell_output("#{bin}/storescreens --version")
  end
end
