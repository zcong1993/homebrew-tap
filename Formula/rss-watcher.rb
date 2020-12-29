# This file was generated by GoReleaser. DO NOT EDIT.
class RssWatcher < Formula
  desc "Watch rss source"
  homepage "https://github.com/zcong1993/rss-watcher"
  version "0.8.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/zcong1993/rss-watcher/releases/download/v0.8.1/rss-watcher_0.8.1_Darwin_x86_64.tar.gz"
    sha256 "fca7ed70b4b1a4dd26737cde5bd5b06f1818006784661bcd75489f0abce58693"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zcong1993/rss-watcher/releases/download/v0.8.1/rss-watcher_0.8.1_Linux_x86_64.tar.gz"
    sha256 "23043b97ad9b4042a27c5022e8c3344cb068adaa14931acb956aae9f6091ddbb"
  end

  def install
    bin.install "rss-watcher"
  end

  test do
    system "#{bin}/rss-watcher -v"
  end
end
