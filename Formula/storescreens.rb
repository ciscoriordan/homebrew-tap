class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.4.2/storescreens-v2.4.2-macos.tar.gz"
  sha256 "1c52bf0ff876bf27983715249491e9e11193e9156e0efc4e8f71baaef3828f85"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.4.2", shell_output("#{bin}/storescreens --version")
  end
end
