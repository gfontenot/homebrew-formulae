require "formula"

class XcodeCli < Formula
  homepage "https://github.com/gfontenot/xcode-cli"
  url "https://github.com/gfontenot/xcode-cli/archive/v1.2.0.tar.gz"
  sha256 "5ad0327a100698597ae09fe564dfd395cf3b4ce84533d5520f9328412d5afde6"

  depends_on "fzf"

  def install
    bin.install "src/xcode"
    bin.install Dir["src/commands/*"]
  end

  test do
    system "#{bin}/xcode", "--help"
  end
end
