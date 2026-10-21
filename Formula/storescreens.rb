class Storescreens < Formula
  desc "Set up simulators, run XCUITests, and collect raw screenshots"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v4.0.1/storescreens-v4.0.1-macos.tar.gz"
  sha256 "e79457e209a2af66dbd43903626734dc1a8f2b02628574ac397cb5957b121611"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"storescreens"
    bin.write_exec_script libexec/"storescreens-mcp"
  end

  test do
    assert_match "4.0.1", shell_output("#{bin}/storescreens --version")
    assert_match "XCTAttachment", shell_output("#{bin}/storescreens setup --print-template")
  end
end
