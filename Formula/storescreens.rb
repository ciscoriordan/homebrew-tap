class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.0.1/storescreens-v3.0.1-macos.tar.gz"
  sha256 "c49bc8393b3fdcdcd3e231efacc586578ab87e2d87b58fee2768d68059047180"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.0.1", shell_output("#{bin}/storescreens --version")
  end
end
