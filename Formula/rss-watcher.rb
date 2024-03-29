# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RssWatcher < Formula
  desc "Watch rss source"
  homepage "https://github.com/zcong1993/rss-watcher"
  version "0.22.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.22.3/rss-watcher_0.22.3_Darwin_x86_64.tar.gz"
      sha256 "63448a99c43a5ed6df1c28c1fda030abf8562494bfd9b69cb4c6351a70125c33"

      def install
        bin.install "rss-watcher"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.22.3/rss-watcher_0.22.3_Darwin_arm64.tar.gz"
      sha256 "dfdb35a3337e35e5b4880ff045d0473aef18e9c2dac57008527e2ed91917f40f"

      def install
        bin.install "rss-watcher"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.22.3/rss-watcher_0.22.3_Linux_x86_64.tar.gz"
      sha256 "ec5904ed261504dd89318a82a6fcf598e8ea4f3d07c79e7b0a2e6cb523925ae2"

      def install
        bin.install "rss-watcher"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.22.3/rss-watcher_0.22.3_Linux_arm64.tar.gz"
      sha256 "7a318bd3c482811ac794f59803e6dc8f7b29c46576aa095141c24d197151ac5f"

      def install
        bin.install "rss-watcher"
      end
    end
  end

  test do
    system "#{bin}/rss-watcher --version"
  end
end
