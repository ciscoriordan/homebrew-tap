class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.5.2/storescreens-v1.5.2-macos.tar.gz"
  sha256 "f55a6333808648c9b62da28feda6bb2ffacf785067c31e1e81f75c8c08cd30b2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.5.2", shell_output("#{bin}/storescreens --version")
  end
end
