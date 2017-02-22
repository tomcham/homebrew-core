class Tcpreplay < Formula
  desc "Replay saved tcpdump files at arbitrary speeds"
  homepage "http://tcpreplay.appneta.com"
  url "https://github.com/appneta/tcpreplay/archive/v4.1.2.tar.gz"
  sha256 "d57d1751979c27399a2fe89fbf211711b7f1d291a868ec078153e4ad1cbc4c47"

  depends_on "libdnet"

  def install
    system "./configure", "--enable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--enable-dynamic-link"
    system "make", "install"
  end

  test do
    system bin/"tcpreplay", "--version"
  end
end
