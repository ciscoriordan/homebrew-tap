class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.3.1/storescreens-v3.3.1-macos.tar.gz"
  sha256 "5d8318b4b4fb62c2165eb50c03eac989097952b37cac92f232fb40d83714d0e2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.3.1", shell_output("#{bin}/storescreens --version")
  end
end
