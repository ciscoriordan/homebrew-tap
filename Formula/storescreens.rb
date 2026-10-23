class Storescreens < Formula
  desc "Set up simulators, run XCUITests, and collect raw screenshots"
  homepage "https://github.com/ciscoriordan/storescreens-cli"
  url "https://github.com/ciscoriordan/storescreens-cli/releases/download/v4.1.1/storescreens-v4.1.1-macos.tar.gz"
  sha256 "0fb91c65602a2d53740e82197ee95be0eeaf37314d31d403b2b2ba9baca48dd6"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"storescreens"
    bin.write_exec_script libexec/"storescreens-mcp"
  end

  test do
    assert_match "4.1.1", shell_output("#{bin}/storescreens --version")
    assert_match "XCTAttachment", shell_output("#{bin}/storescreens setup --print-template")
  end
end
