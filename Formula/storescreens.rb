class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.16.0/storescreens-v2.16.0-macos.tar.gz"
  sha256 "916bf4cb1a4cbe9b6e86df8dc4c98b454078513579f5aeeec136bb1742b6561f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.16.0", shell_output("#{bin}/storescreens --version")
  end
end
