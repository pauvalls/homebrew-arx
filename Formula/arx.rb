class Arx < Formula
  desc "Architecture audit CLI for cross-language codebases"
  homepage "https://github.com/pauvalls/arx"
  url "https://github.com/pauvalls/arx/archive/refs/tags/v0.27.0.tar.gz"
  sha256 "4d664c7a9e8346cdfd97e62b9cc4fdd07f212de003fab5b80aaeffb7e0d2eadd"
  license "MPL-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/arx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arx --version")
  end
end
