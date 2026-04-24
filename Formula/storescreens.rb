class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.2/storescreens-v2.0.2-macos.tar.gz"
  sha256 "f43991002073f014e6240f1c577c9b2fe95ce3672adc189903eb5b184af88c8a"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.2", shell_output("#{bin}/storescreens --version")
  end
end
