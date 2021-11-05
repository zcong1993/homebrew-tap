# This file was generated by GoReleaser. DO NOT EDIT.
class ChangedFiles < Formula
  desc "go port jest-changed-files"
  homepage "https://github.com/zcong1993/changed-files"
  version "0.1.3"

  if OS.mac?
    url "https://github.com/zcong1993/changed-files/releases/download/v0.1.3/changed-files_0.1.3_darwin_amd64.tar.gz"
    sha256 "10c8dda32ff218998e07a8d216fa18a5e186a7ff64bc900e00b1bfe2e6a7bc7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zcong1993/changed-files/releases/download/v0.1.3/changed-files_0.1.3_linux_amd64.tar.gz"
    sha256 "c1a54d500d2cdff23e04bd131bade2cc4f7e97ca3eaba6af409f70e52fadc901"
  end

  def install
    bin.install "changed-files"
  end

  test do
    system "#{bin}/changed-files -v"
  end
end
