require "formula"

class XcodeCli < Formula
  homepage "https://github.com/gfontenot/xcode-cli"
  url "https://github.com/gfontenot/xcode-cli/releases/download/v1.0.0/xcode-cli.tar.gz"
  sha256 "256b695b6fcbbe9f0a354f27358394719c92509dffec78721a84993c6d3475f3"

  depends_on "fzf"

  def install
    bin.install "src/xcode"
    bin.install Dir["src/commands/*"]
  end

  test do
    system "#{bin}/xcode", "--help"
  end
end
