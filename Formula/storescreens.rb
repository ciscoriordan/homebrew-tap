class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.14.0/storescreens-v2.14.0-macos.tar.gz"
  sha256 "2d1f0cb1a478fc5421929627e3edbb40a77f4b785b91bd0ff6c19f4ac361cf38"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.14.0", shell_output("#{bin}/storescreens --version")
  end
end
