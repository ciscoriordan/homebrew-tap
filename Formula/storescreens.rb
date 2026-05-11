class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.12.0/storescreens-v2.12.0-macos.tar.gz"
  sha256 "fe319853eb12d65b23f78619b54a175e4490253e5e3ef7a8105dddb92522e1e3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.12.0", shell_output("#{bin}/storescreens --version")
  end
end
