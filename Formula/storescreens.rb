class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.2.2/storescreens-v2.2.2-macos.tar.gz"
  sha256 "df92a13796d52024069ad2976571fbd86ba5f64e1bda64946016b52daca4f07b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.2.2", shell_output("#{bin}/storescreens --version")
  end
end
