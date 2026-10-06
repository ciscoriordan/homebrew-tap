class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.13.2/storescreens-v3.13.2-macos.tar.gz"
  sha256 "a1bd508d2a8e92f6d1f9d801379eb12296344844bf22ad752f881a7dfa8933d6"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.13.2", shell_output("#{bin}/storescreens --version")
  end
end
