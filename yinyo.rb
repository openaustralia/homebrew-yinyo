class Yinyo < Formula
  desc "A wonderfully simple API driven service to reliably execute many long running scrapers in a super scaleable way"
  homepage "https://yinyo.io"
  url "https://github.com/openaustralia/yinyo/releases/download/v0.9-beta.2/yinyo_0.9-beta.2_darwin_amd64"
  sha256 "b7d52d9fd8386062593cd334de931ee86a1b0bce677796e5e8270f74b76819c9"
  # This shouldn't be needed if we don't have such a complicated version number
  version "v0.9-beta.2"

  def install
    bin.install Dir.glob("yinyo*").first => "yinyo"
  end

  test do
    system bin/"yinyo --help"
  end
end
