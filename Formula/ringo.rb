require "language/haskell"

class Ringo < Formula
  include Language::Haskell::Cabal

  desc "Tool to transform Postgres OLTP database schemas to OLAP database star schemas automatically"
  homepage "https://quintype.github.io/ringo"
  url "https://github.com/quintype/ringo/archive/v0.1.tar.gz"
  sha256 "ba85b845fc44f8d63e1b508d2747fb132dd04638bad51fedad89e0229de30314"
  
  head "https://github.com/quintype/ringo.git"

  bottle do
    root_url "https://github.com/quintype/ringo/releases/download/v0.1"
    sha256 "860b7d12231bf79556a3f525c5982eb208dcfabf384a4a9ba83e8429947f15b0" => :yosemite
    sha256 "328f0c6842091bfcddaa7b00dbb3c5bece760053ad5c45550c318954f2b8d06f" => :el_capitan
  end

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
