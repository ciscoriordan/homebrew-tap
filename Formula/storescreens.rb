class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.8.0/storescreens-v3.8.0-macos.tar.gz"
  sha256 "b513343387a23ef939f0b7fd2ecba8d5944e34e016e18c54ebd58703414d9571"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.8.0", shell_output("#{bin}/storescreens --version")
  end
end
