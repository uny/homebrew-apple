class Thankios < Formula
  desc "Acknowlegements Settings.bundle generator for CocoaPods and Carthage."
  homepage "https://github.com/uny/Thankios"
  url "https://github.com/uny/Thankios/archive/v1.0.2.tar.gz"
  version "1.0.2"
  sha256 "22e741e7ea01144d64d0a87574d1fd28790a9c5500ee4f84adfd8307c822cd79"

  depends_on :xcode => ["7.3", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/thankios"
  end
end
