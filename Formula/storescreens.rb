class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.1.0/storescreens-v3.1.0-macos.tar.gz"
  sha256 "aa8a2856aa33c3eaada1fad62ab78972f95d1c7076a589a9010ce35325ba0ebd"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.1.0", shell_output("#{bin}/storescreens --version")
  end
end
