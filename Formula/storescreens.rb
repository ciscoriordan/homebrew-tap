class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.3/storescreens-v2.0.3-macos.tar.gz"
  sha256 "b68db9040d28dae9b54b981eb37f31b783651a2d4b5975a6008d6f1a35ac3ac0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.3", shell_output("#{bin}/storescreens --version")
  end
end
