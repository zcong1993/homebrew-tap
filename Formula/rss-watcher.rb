# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RssWatcher < Formula
  desc "Watch rss source"
  homepage "https://github.com/zcong1993/rss-watcher"
  version "0.20.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.20.2/rss-watcher_0.20.2_Darwin_x86_64.tar.gz"
      sha256 "62842e40974d6548a748af4eaa951ceb7abc590b3127d336b56c89b727df20c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.20.2/rss-watcher_0.20.2_Darwin_arm64.tar.gz"
      sha256 "5314b33bf1f1c0d3c6b5274a63976980c092fca771dcbdd3a5a49290d3a6d13c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.20.2/rss-watcher_0.20.2_Linux_x86_64.tar.gz"
      sha256 "dd6c8ccb49389ac147a6ef81cba2b02fc19e03ae40716a98bec4f2d0ad837cf3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zcong1993/rss-watcher/releases/download/v0.20.2/rss-watcher_0.20.2_Linux_arm64.tar.gz"
      sha256 "b9248b290957edde96998ee687b7f52be1c4ce4c616a38263f3e165634050374"
    end
  end

  def install
    bin.install "rss-watcher"
  end

  test do
    system "#{bin}/rss-watcher --version"
  end
end
