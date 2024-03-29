# This file was generated by GoReleaser. DO NOT EDIT.
class Isaka < Formula
  desc "tail log for Apache Kafka"
  homepage "https://github.com/pyama86/isaka"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/pyama86/isaka/releases/download/v0.0.4/isaka_0.0.4_darwin_amd64.tar.gz"
    sha256 "783f568b2fa93f7c0fae5b68f551bd304de9999f3855c273fd3037d360e2754e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pyama86/isaka/releases/download/v0.0.4/isaka_0.0.4_linux_amd64.tar.gz"
      sha256 "274743b3e3f0a59d49a6bb8a6ea2c6267b0fcae817294228bf7b89a700fa07a6"
    end
  end

  def install
    bin.install Dir['isaka']
  end

  test do
    system "#{bin}/isaka"
  end
end
