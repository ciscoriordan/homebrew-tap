class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.10.1/storescreens-v3.10.1-macos.tar.gz"
  sha256 "75840a0c782dbe0cc8a1ac3166bb579f5b6b1473c1f00e666e72831a32488906"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.10.1", shell_output("#{bin}/storescreens --version")
  end
end
