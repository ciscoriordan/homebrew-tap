class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.11.0/storescreens-v3.11.0-macos.tar.gz"
  sha256 "fe96deaa248c5273fb2612a5efbabf104c5252a749e4a279574ea08544f8c152"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.11.0", shell_output("#{bin}/storescreens --version")
  end
end
