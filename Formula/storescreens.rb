class Storescreens < Formula
  desc "Set up simulators, run XCUITests, and collect raw screenshots"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v4.1.0/storescreens-v4.1.0-macos.tar.gz"
  sha256 "2ec9c9d8e2ec5a005d8b384d317b79f4be7986d04381c2918d089732aefeb59c"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"storescreens"
    bin.write_exec_script libexec/"storescreens-mcp"
  end

  test do
    assert_match "4.1.0", shell_output("#{bin}/storescreens --version")
    assert_match "XCTAttachment", shell_output("#{bin}/storescreens setup --print-template")
  end
end
