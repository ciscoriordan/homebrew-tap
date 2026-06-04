class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.5.1/storescreens-v3.5.1-macos.tar.gz"
  sha256 "56fac152e2f529642f5097f3548c85de4ca450a969ccb59eebd9fb4bec0f67c9"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.5.1", shell_output("#{bin}/storescreens --version")
  end
end
