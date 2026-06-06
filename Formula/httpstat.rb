class Httpstat < Formula
  desc "HTTP performance measurement tool with waterfall output and trace"
  homepage "https://github.com/vandancd/httpstat"
  url "https://github.com/vandancd/httpstat/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "72a5499683ee7b087db75c2d2c86ecbe2522ff93541f1f7cecc60e3c9f8b2551"
  version "1.0.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "httpstat 1.0", shell_output("#{bin}/httpstat --version")
  end
end
