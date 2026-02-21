class Autoclaude < Formula
  desc "Automated Claude Code runner with automatic rate-limit recovery"
  homepage "https://github.com/evanisnor/autoclaude"
  url "https://github.com/evanisnor/autoclaude/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "19dfaa1ec38f8c92878dd792f8417360aff2cf0386eb057304acbe12f2833612"
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
