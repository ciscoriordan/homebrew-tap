class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.17.0/storescreens-v2.17.0-macos.tar.gz"
  sha256 "ebc740421ae51a337447018ed48dee1dae35b79e94dd33e9a4278a435eee43f4"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.17.0", shell_output("#{bin}/storescreens --version")
  end
end
