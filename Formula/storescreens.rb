class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.2.0/storescreens-v3.2.0-macos.tar.gz"
  sha256 "60d2352f35d5b7a589ea8c964b8bcf8d5b7fbf6bffa65822e54466ce1e729c6c"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.2.0", shell_output("#{bin}/storescreens --version")
  end
end
