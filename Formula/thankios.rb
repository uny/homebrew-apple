class Thankios < Formula
  desc "Acknowlegements Settings.bundle generator for CocoaPods and Carthage."
  homepage "https://github.com/uny/Thankios"
  url "https://github.com/uny/Thankios/archive/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "b136adaae8d17ad79e0bba9232e3c04c2025f969f143e99462515935b378e3cd"

  depends_on :xcode => ["7.2", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/thankios"
  end
end
