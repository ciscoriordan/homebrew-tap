class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.11.3/storescreens-v3.11.3-macos.tar.gz"
  sha256 "6814791fb77297d4cafa107ccb27559782d4e677f8ff088517d01edffea3dc91"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.11.3", shell_output("#{bin}/storescreens --version")
  end
end
