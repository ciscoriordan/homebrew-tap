class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v1.6.0/storescreens-v1.6.0-macos.tar.gz"
  sha256 "f55768e16ef1ccd90b97676f745e9f04faf80330e0a7dc5a260edf35fd3d44e4"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "1.6.0", shell_output("#{bin}/storescreens --version")
  end
end
