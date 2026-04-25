class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.3.0/storescreens-v2.3.0-macos.tar.gz"
  sha256 "aac33cdaa6689f75b41368d6e34f3556059187e8e3eb26577a12f8ae429a3cb5"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.3.0", shell_output("#{bin}/storescreens --version")
  end
end
