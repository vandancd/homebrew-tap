class Httpstat < Formula
  desc "HTTP performance measurement tool with waterfall output and trace"
  homepage "https://github.com/vandancd/httpstat"
  url "https://github.com/vandancd/httpstat/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "d8e7bcff20ee7b5192807c21cd02e0c58e567366af80a26e75142953860623b6"
  version "1.2.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "httpstat 1.2.0", shell_output("#{bin}/httpstat --version")
  end
end
