# typed: false
# frozen_string_literal: true

class DailyMotd < Formula
  desc "Generic daily terminal message-of-the-day CLI with Today in Nature built in"
  homepage "https://github.com/mennoliefstingh/daily-motd"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mennoliefstingh/daily-motd/releases/download/v0.1.2/daily-motd_0.1.2_darwin_arm64.tar.gz"
      sha256 "27ea63c6176c6370619ad38e07786e7e18851d3890998a2dd50997111d24f0c8"
    end
    on_intel do
      url "https://github.com/mennoliefstingh/daily-motd/releases/download/v0.1.2/daily-motd_0.1.2_darwin_amd64.tar.gz"
      sha256 "ce1cc55629bec8999c7fb9e8a31174d110d7315238d963c791c1b7e03a0c428a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mennoliefstingh/daily-motd/releases/download/v0.1.2/daily-motd_0.1.2_linux_arm64.tar.gz"
      sha256 "cae3146cefa0d28fb22dd492ec7c747b21cbaa01344f6d45d8aae9fa43d0745a"
    end
    on_intel do
      url "https://github.com/mennoliefstingh/daily-motd/releases/download/v0.1.2/daily-motd_0.1.2_linux_amd64.tar.gz"
      sha256 "68375fdbd1a58e6ba1b413467b9551f9cfd21fc209f02df11d8b4b42fccef5d1"
    end
  end

  def install
    bin.install "daily-motd"
  end

  test do
    system "#{bin}/daily-motd", "--version"
  end
end
