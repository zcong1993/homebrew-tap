# This file was generated by GoReleaser. DO NOT EDIT.
class RssWatcher < Formula
  desc "Watch rss source"
  homepage "https://github.com/zcong1993/rss-watcher"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/zcong1993/rss-watcher/releases/download/v0.8.0/rss-watcher_0.8.0_Darwin_x86_64.tar.gz"
    sha256 "45c3fc9ab062e305144a6cf88f4e380edd8598c72ff9a89c8b42de34c301639f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zcong1993/rss-watcher/releases/download/v0.8.0/rss-watcher_0.8.0_Linux_x86_64.tar.gz"
    sha256 "f353569072c113f8dc40c6060c70fa33a67c6eb159ee2d52b200b63a98a37577"
  end

  def install
    bin.install "rss-watcher"
  end

  test do
    system "#{bin}/rss-watcher -v"
  end
end
