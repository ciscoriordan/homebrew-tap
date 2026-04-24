class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.1.1/storescreens-v2.1.1-macos.tar.gz"
  sha256 "0f7a3bda3caa14fa939abf429f373c80fac432a50752796492c9007aff0586b7"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.1.1", shell_output("#{bin}/storescreens --version")
  end
end
