require "formula"

class Quindeps < Formula
  homepage "http://www.quintype.com"
  url "https://github.com/gja/homebrew-quindeps/tarball/master"
  version "0.1"

  depends_on "rbenv"
  depends_on "postgres"

  def install
    bin.install "quindeps"
  end
end
