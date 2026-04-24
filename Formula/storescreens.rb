class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.2.1/storescreens-v2.2.1-macos.tar.gz"
  sha256 "db44f9943a0967ce764a7255f455e3cd80419ee462fb3826db4ad849aae756e8"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.2.1", shell_output("#{bin}/storescreens --version")
  end
end
