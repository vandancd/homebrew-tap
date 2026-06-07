class Httpstat < Formula
  desc "HTTP performance measurement tool with waterfall output and trace"
  homepage "https://github.com/vandancd/httpstat"
  url "https://github.com/vandancd/httpstat/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "7074e0c7b5de2a7125af45217b08c55e8c302ee8d7559fbf79939a514b36d650"
  version "1.1.1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "httpstat 1.1", shell_output("#{bin}/httpstat --version")
  end
end
