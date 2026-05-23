class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.2.1/storescreens-v3.2.1-macos.tar.gz"
  sha256 "162a1b54248ca8989fd0850681fd4d1e105c5f036f3957855e3b7ae9e25bcb02"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.2.1", shell_output("#{bin}/storescreens --version")
  end
end
