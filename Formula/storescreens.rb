class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.1.0/storescreens-v2.1.0-macos.tar.gz"
  sha256 "c3a0440719588a5675983badf4001f7db748632c0c2aa78da3ce3adcfe058711"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/storescreens --version")
  end
end
