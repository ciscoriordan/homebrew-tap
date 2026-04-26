class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.6.1/storescreens-v2.6.1-macos.tar.gz"
  sha256 "f57b33e6339347270f05d41e65fe3ff99e581a139cdd34be656a6e32677748c8"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.6.1", shell_output("#{bin}/storescreens --version")
  end
end
