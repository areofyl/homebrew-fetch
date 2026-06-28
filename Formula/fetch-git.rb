class FetchGit < Formula
  desc "3D rotating system fetch for your terminal"
  homepage "https://github.com/areofyl/fetch"
  url "https://github.com/areofyl/fetch/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "575f43040fd3f912f84a151ee4069812eb1a15306541ed36d5b10897984174ed"
  license "ISC"

  head "https://github.com/areofyl/fetch.git", branch: "main"

  depends_on :linux
  depends_on "fastfetch" => :optional

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_predicate bin/"fetch", :exist?
  end
end
