class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.4.1/storescreens-v3.4.1-macos.tar.gz"
  sha256 "9d8b705c3c7df946f053efa9f42e8e3e624212c76903d452e0035f446dcd52bc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.4.1", shell_output("#{bin}/storescreens --version")
  end
end
