class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.7.3/storescreens-v1.7.3-macos.tar.gz"
  sha256 "ecca4a425878d5fa83060623297fdaacd75e6cbe98f5c30ffa1dc9867168dc7b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.7.3", shell_output("#{bin}/storescreens --version")
  end
end
