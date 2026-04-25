class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.5.1/storescreens-v2.5.1-macos.tar.gz"
  sha256 "5abcae480139cf3e3aebd3027a367949aff1e5ca7670f782850f015184041dc8"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.5.1", shell_output("#{bin}/storescreens --version")
  end
end
