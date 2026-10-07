class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.13.3/storescreens-v3.13.3-macos.tar.gz"
  sha256 "16bd1ada4d96283c071557e7f672f33af05fe5638ac0bc23c488a863aee63b40"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.13.3", shell_output("#{bin}/storescreens --version")
  end
end
