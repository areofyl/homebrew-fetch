class FetchGit < Formula
  desc "3D rotating system fetch for your terminal"
  homepage "https://github.com/areofyl/fetch"
  url "https://github.com/areofyl/fetch/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "a09f78b5bd6007b7260bfa7cf2879944ba48ef6bdefbd98c3841e00255daae2c"
  license "ISC"

  head "https://github.com/areofyl/fetch.git", branch: "main"

  depends_on "fastfetch" => :optional

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_predicate bin/"fetch", :exist?
  end
end
