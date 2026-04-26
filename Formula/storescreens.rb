class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.0/storescreens-v2.7.0-macos.tar.gz"
  sha256 "3c1df289762537e7ab1b57f8adc7735294959e21a59fe91135cfb01e838350e3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.0", shell_output("#{bin}/storescreens --version")
  end
end
