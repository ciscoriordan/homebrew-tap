class Storescreens < Formula
  desc "Set up simulators, run XCUITests, and collect raw screenshots"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v4.0.0/storescreens-v4.0.0-macos.tar.gz"
  sha256 "f5660685c75eeb4de2a2bd76c4ee57133a7872df3c18f31fe594e23c0b5e8559"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"storescreens"
    bin.write_exec_script libexec/"storescreens-mcp"
  end

  test do
    assert_match "4.0.0", shell_output("#{bin}/storescreens --version")
    assert_match "XCTAttachment", shell_output("#{bin}/storescreens setup --print-template")
  end
end
