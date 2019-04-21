class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/antirez/redis"
  version "5.0.4"
  sha256 "5f3b6b5407a76611c276ed63a7b269f1abbbe8bc7da2451744ef77ca7a905d0f"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
