class Httpstat < Formula
  desc "HTTP performance measurement tool with waterfall output and trace"
  homepage "https://github.com/vandancd/httpstat"
  url "https://github.com/vandancd/httpstat/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e5798964639934065f0c207b90145e5b551b59484ee6b9ac8b2c97a2d40559df"
  version "1.1.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "httpstat 1.1", shell_output("#{bin}/httpstat --version")
  end
end
