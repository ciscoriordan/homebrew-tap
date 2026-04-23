class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.0.0/storescreens-v2.0.0-macos.tar.gz"
  sha256 "ed72b45db228847e2dfbd5ae61219d820f3c0eede0d124485fb8e0452c87e4e3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
  end

  test do
    assert_match "2.0.0", shell_output("#{bin}/storescreens --version")
  end
end
