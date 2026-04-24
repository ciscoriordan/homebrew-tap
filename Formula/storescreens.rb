class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.5/storescreens-v2.0.5-macos.tar.gz"
  sha256 "622aeaafc14590879455b17afb8d3e853ad7c70b4088dae5a9880d525599b6ae"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.5", shell_output("#{bin}/storescreens --version")
  end
end
