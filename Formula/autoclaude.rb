class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e06b4aee088cb022c4c6c1850ea81e20a2733ff9f6ad28388208ff2b17a72b7b"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "autoclaude"
  end

  test do
    output = shell_output("#{bin}/autoclaude 2>&1", 1)
    assert_match "No prompt file found", output
  end
end
