class Httpstat < Formula
  desc "HTTP performance measurement tool with waterfall output and trace"
  homepage "https://github.com/vandancd/httpstat"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vandancd/httpstat/releases/download/v1.0.0/httpstat_darwin_arm64.tar.gz"
      sha256 "4024a6b0766cd4d8493ee75fc9926064b208c85e3f15223abb474bfe67a6203c"
    else
      url "https://github.com/vandancd/httpstat/releases/download/v1.0.0/httpstat_darwin_amd64.tar.gz"
      sha256 "dff4afe928fc09619c497ac20a2a97e6e89b71c1426a7ca7688d55e8c352dbea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vandancd/httpstat/releases/download/v1.0.0/httpstat_linux_arm64.tar.gz"
      sha256 "63859de29dd7d3b8e3f5912d983170570904aafdebc001c45088e1b54f00e85c"
    else
      url "https://github.com/vandancd/httpstat/releases/download/v1.0.0/httpstat_linux_amd64.tar.gz"
      sha256 "07e3d6f634e052deda56097212730a24aa22663088d245394d8a3f3d0fd28e1d"
    end
  end

  def install
    bin.install "httpstat"
  end

  test do
    assert_match "httpstat 1.0", shell_output("#{bin}/httpstat --version")
  end
end
