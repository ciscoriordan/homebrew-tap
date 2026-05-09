class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.10.1/storescreens-v2.10.1-macos.tar.gz"
  sha256 "3b6f2da8a0872fdda5b3cb867641244dca54c85a36c0c84fd1440acc8fdc06fb"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.10.1", shell_output("#{bin}/storescreens --version")
  end
end
