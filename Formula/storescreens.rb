class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.0.0/storescreens-v3.0.0-macos.tar.gz"
  sha256 "1f56947d861b34405d3a17875cacf4883106d2a7b5c3101bef549b3d937e575d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.0.0", shell_output("#{bin}/storescreens --version")
  end
end
