class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.10.2/storescreens-v2.10.2-macos.tar.gz"
  sha256 "ff379022057190484412fa8ca595e5631b7cb8d1e16506d04cbe8afa41495782"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.10.2", shell_output("#{bin}/storescreens --version")
  end
end
