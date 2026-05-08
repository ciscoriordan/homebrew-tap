class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.10.0/storescreens-v2.10.0-macos.tar.gz"
  sha256 "edaea5a42fc2f9f926b000441c9ec2ba6610fcff716213b0ed61d1fd80c56aaf"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.10.0", shell_output("#{bin}/storescreens --version")
  end
end
