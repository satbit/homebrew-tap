class Sshpass < Formula
  desc "Install sshpass"
  homepage 'http://sourceforge.net/projects/sshpass'
  version "1.06"
  sha256 'c6324fcee608b99a58f9870157dfa754837f8c48be3df0f5e2f3accf145dee60'
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.06/sshpass-1.06.tar.gz'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
    bin.install "./src/sshpass"
  end

  test do
    system "#{bin}sshpass"
  end
end
