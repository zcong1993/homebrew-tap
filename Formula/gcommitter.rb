# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gcommitter < Formula
  desc "Easy way of git commit and push"
  homepage "https://github.com/zcong1993/gcommitter"
  version "2.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.3/gcommitter_2.2.3_Darwin_arm64.tar.gz"
      sha256 "a510af81562515d888ca2f922dd9a5ff7633e8b8e8a4c2a1b71774e386a0802e"

      def install
        bin.install "gcommitter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.3/gcommitter_2.2.3_Darwin_x86_64.tar.gz"
      sha256 "4678650815e89b0cd3bea9557984cc03a7b5f0c630cec7b81cfa1b7657a1dfa3"

      def install
        bin.install "gcommitter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.3/gcommitter_2.2.3_Linux_x86_64.tar.gz"
      sha256 "4c8f9dd9efb7a3731e05ffe52b28c86d8fbde9317fbd890000f9937283b8041f"

      def install
        bin.install "gcommitter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zcong1993/gcommitter/releases/download/v2.2.3/gcommitter_2.2.3_Linux_arm64.tar.gz"
      sha256 "10cc4fe2b2ad0eafbeca804e9e60e451c12b69c0ed8e55b9dcbc60ffd0a50a9e"

      def install
        bin.install "gcommitter"
      end
    end
  end

  test do
    system "#{bin}/gcommitter -v"
  end
end
