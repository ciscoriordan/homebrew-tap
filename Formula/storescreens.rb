class Storescreens < Formula
  desc "Capture App Store screenshots for iOS and macOS apps across every device size"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v2.4.1/storescreens-v2.4.1-macos.tar.gz"
  sha256 "4c56a10aa4d42b8975434894d7550b5aa5634cbc0da168794edd4b62a4a866b7"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "storescreens"
    bin.install "storescreens-mcp"
    # SwiftPM resource bundle (laurel SVGs etc.). Bundle.module looks
    # for it next to the executable at runtime, so it has to live in
    # bin/ alongside the binaries.
    bin.install "storescreens-cli_StorescreensCore.bundle"
  end

  test do
    assert_match "2.4.1", shell_output("#{bin}/storescreens --version")
  end
end
