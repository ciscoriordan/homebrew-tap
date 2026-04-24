class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.4/storescreens-v2.0.4-macos.tar.gz"
  sha256 "b88037d29101c960ac9b3d7d63a5f481816c48dda4c5d255ba93993fdb174ffd"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.4", shell_output("#{bin}/storescreens --version")
  end
end
