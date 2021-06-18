# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gcommitter < Formula
  desc "Easy way of git commit and push"
  homepage "https://github.com/zcong1993/gcommitter"
  version "2.2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.0/gcommitter_2.2.0_darwin_amd64.tar.gz"
      sha256 "2285b36566173d47b311e8951da2478f08f02a4fc6d3e0465aa6e73fdcc58b38"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.0/gcommitter_2.2.0_linux_amd64.tar.gz"
      sha256 "e8709c6a1ab43c2ce78118f1689a694ab2f3198c77892d09785385ab02754c3f"
    end
  end

  def install
    bin.install "gcommitter"
  end

  test do
    system "#{bin}/gcommitter -v"
  end
end
