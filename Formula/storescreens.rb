class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.8.1/storescreens-v2.8.1-macos.tar.gz"
  sha256 "1a5a7af0565d61b9e44227c12c2978e0e372e1bce832340522be3908d9aed5ce"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.8.1", shell_output("#{bin}/storescreens --version")
  end
end
