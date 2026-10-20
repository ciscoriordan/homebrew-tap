class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v3.13.4/storescreens-v3.13.4-macos.tar.gz"
  sha256 "963cf8eab8609e811ce73033815bf2c475606adf0a532820123bcb03b9e91d97"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "3.13.4", shell_output("#{bin}/storescreens --version")
  end
end
