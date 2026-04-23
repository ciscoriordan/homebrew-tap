class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.7.1/storescreens-v1.7.1-macos.tar.gz"
  sha256 "f323c2a11e7aa0f7a44c33b9386b01898c771634b57046f191aeac63e3485484"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.7.1", shell_output("#{bin}/storescreens --version")
  end
end
