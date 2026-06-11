class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.7.0/storescreens-v3.7.0-macos.tar.gz"
  sha256 "896e5a9cb05525fa3bb9775b572ab39591860161104852e8d94493d2079a9034"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.7.0", shell_output("#{bin}/storescreens --version")
  end
end
