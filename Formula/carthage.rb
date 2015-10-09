class Carthage < Formula
  desc "Decentralized dependency manager for Cocoa"
  homepage "https://github.com/Carthage/Carthage"
  url "https://github.com/gfontenot/homebrew-formulae/raw/gh-pages/carthage-0.9.3.tar.gz"
  sha256 "6cdb88c315cf89740d42638b69b040f7690f4e81cde4a5e5defff5d1ecedd444"

  def install
    prefix.install "bin"
    prefix.install "Frameworks"
  end

  test do
    (testpath/"Cartfile").write 'github "jspahrsummers/xcconfigs"'
    system "#{bin}/carthage", "update"
  end
end
