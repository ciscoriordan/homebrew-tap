class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.7.4/storescreens-v2.7.4-macos.tar.gz"
  sha256 "6f4dae12a1ea2fb8638a13356fa7ea8606f6ad12027ffca7747c9e771ec83ca7"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.7.4", shell_output("#{bin}/storescreens --version")
  end
end
