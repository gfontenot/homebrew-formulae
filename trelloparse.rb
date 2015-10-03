require 'formula'

class Trelloparse < Formula
  homepage 'https://github.com/jferris/trelloparse'
  url 'https://github.com/gfontenot/homebrew-formulae/raw/gh-pages/trelloparse-0.1.0.tar.gz'
  sha256 'a9357aaa9522ae47babef1560547f5fe118372db255879dcda5250eceeafa017'

  def install
    bin.install 'trelloparse'
  end
end
