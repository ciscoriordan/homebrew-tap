class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.8.0/storescreens-v1.8.0-macos.tar.gz"
  sha256 "441eb6a3db0643a239553dbc8596ffe122a56d8dfee898c84efd64d5554ce480"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.8.0", shell_output("#{bin}/storescreens --version")
  end
end
