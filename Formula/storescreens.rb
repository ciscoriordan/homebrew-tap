class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.11.0/storescreens-v2.11.0-macos.tar.gz"
  sha256 "d349aa99e6e01c46a00144ba710a44bd9f9212e9a9fbddc50e2c8cea8c2b057f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.11.0", shell_output("#{bin}/storescreens --version")
  end
end
