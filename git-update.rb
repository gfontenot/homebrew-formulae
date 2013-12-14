require 'formula'

class GitUpdate < Formula
  homepage 'https://github.com/gfontenot/git-update'
  url 'https://github.com/gfontenot/git-update.git', :tag => '1.0'
  head 'https://github.com/gfontenot/git-update.git'

  def install
    bin.install 'git-update'
  end
end
