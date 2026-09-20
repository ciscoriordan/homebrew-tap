class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.13.0/storescreens-v3.13.0-macos.tar.gz"
  sha256 "81f7ef0120359e3067da7419a877fb1b184761a42b8237e77b18182ae5a619a6"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.13.0", shell_output("#{bin}/storescreens --version")
  end
end
