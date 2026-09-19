class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.12.1/storescreens-v3.12.1-macos.tar.gz"
  sha256 "fc21ae8576f34a152c8ea067cd808832a54133da4ba5406c8b5dfa5f6a9414f7"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.12.1", shell_output("#{bin}/storescreens --version")
  end
end
