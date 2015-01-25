require "formula"

class Quindeps < Formula
  homepage "http://www.quintype.com"
  url "https://github.com/gja/quindeps/tarball/master"
  version "0.1-1"

  depends_on "rbenv"
  depends_on "ruby-build"
  depends_on "homebrew/versions/postgresql93"

  def install
    prefix.install Dir["*"]
    Kernel.system "sh", "#{prefix}/install.sh", HOMEBREW_PREFIX, prefix
  end
end
