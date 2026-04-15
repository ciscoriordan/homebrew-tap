class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.5.0/storescreens-v1.5.0-macos.tar.gz"
  sha256 "51e859736ae27df95b4e382b5c075295a0b16198217d1b60160ee02931422f07"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.5.0", shell_output("#{bin}/storescreens --version")
  end
end
