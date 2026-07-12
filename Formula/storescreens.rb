class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.9.0/storescreens-v3.9.0-macos.tar.gz"
  sha256 "d724d58400fa149124562d3515c27cc4b92ea2f5a5db2c2c49105ef72e32a0b1"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.9.0", shell_output("#{bin}/storescreens --version")
  end
end
