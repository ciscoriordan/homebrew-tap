class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.10.0/storescreens-v3.10.0-macos.tar.gz"
  sha256 "884590855b6581edab5c63498d78be6d34cacabbfbd830abe594a80150765523"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.10.0", shell_output("#{bin}/storescreens --version")
  end
end
