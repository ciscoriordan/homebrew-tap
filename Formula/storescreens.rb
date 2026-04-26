class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.1/storescreens-v2.7.1-macos.tar.gz"
  sha256 "4d7b733621acf29c67f7d67f8207b8d0b6ea3a58b4830df5d7371c9240e9c008"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.1", shell_output("#{bin}/storescreens --version")
  end
end
