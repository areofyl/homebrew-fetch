class FetchGit < Formula
  desc "3D rotating system fetch for your terminal"
  homepage "https://github.com/areofyl/fetch"
  url "https://github.com/areofyl/fetch/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "1ca2b14a969dbf840cdde364a93cd603053451aadbc79f51011e47ec2d441ebb"
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
