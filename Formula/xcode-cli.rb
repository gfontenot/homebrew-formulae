require "formula"

class XcodeCli < Formula
  homepage "https://github.com/gfontenot/xcode-cli"
  url "https://github.com/gfontenot/xcode-cli/archive/v1.1.0.tar.gz"
  sha256 "3fbda3266fe43cf300699542234090d9f05fd1edc1bb6e56b188e30a1f9f5656"

  depends_on "fzf"

  def install
    bin.install "src/xcode"
    bin.install Dir["src/commands/*"]
  end

  test do
    system "#{bin}/xcode", "--help"
  end
end
