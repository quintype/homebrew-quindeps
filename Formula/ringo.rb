require "language/haskell"

class Ringo < Formula
  include Language::Haskell::Cabal

  desc "Tool to transform Postgres OLTP database schemas to OLAP database star schemas automatically"
  homepage "https://quintype.github.io/ringo"
  url "https://github.com/quintype/ringo/archive/v0.1.tar.gz"
  
  head "https://github.com/quintype/ringo.git"

  depends_on "ghc"           => :build
  depends_on "cabal-install" => :build
  depends_on "gmp"

  def install
    install_cabal_package
    (bash_completion/"ringo").write `#{bin}/ringo --bash-completion-script #{bin}/ringo`
  end

  test do
    system "false"
  end
end
