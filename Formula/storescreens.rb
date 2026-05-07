class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.8.0/storescreens-v2.8.0-macos.tar.gz"
  sha256 "4dc388403fc0c9f6d64c75522e0a712d7c4f5653a52f7af6637992beb48fb750"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.8.0", shell_output("#{bin}/storescreens --version")
  end
end
