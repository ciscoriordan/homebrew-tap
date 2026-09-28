class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.13.1/storescreens-v3.13.1-macos.tar.gz"
  sha256 "3d827c023604307b145bf02a31da4791c238bf4c2e233d861703e62f55e81887"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.13.1", shell_output("#{bin}/storescreens --version")
  end
end
