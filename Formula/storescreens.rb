class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.2.0/storescreens-v2.2.0-macos.tar.gz"
  sha256 "fb540db83d2012fee6003c85df0bc9e8474a041ebd215925dfe74e47149ebc48"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.2.0", shell_output("#{bin}/storescreens --version")
  end
end
