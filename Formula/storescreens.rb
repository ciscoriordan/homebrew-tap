class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.4.0/storescreens-v1.4.0-macos.tar.gz"
  sha256 "f4d7a6b25ac8ed49347dd9c6f915d023f6e2e521674e8ebc9c7eec3115922e59"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.4.0", shell_output("#{bin}/storescreens --version")
  end
end
