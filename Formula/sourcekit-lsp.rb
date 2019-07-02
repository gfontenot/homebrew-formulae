class SourcekitLsp < Formula
  desc "Language Server Protocol implementation for Swift and C-based languages"
  homepage "https://github.com/apple/sourcekit-lsp"
  head "https://github.com/apple/sourcekit-lsp.git"

  def install
    system "swift", "build", "--disable-sandbox"
    bin.install './.build/debug/sourcekit-lsp'
  end
end
