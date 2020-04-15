class AwsRunas < Formula
  desc "Friendly way to do AWS STS AssumeRole operations"
  homepage "https://github.com/mmmorris1975/aws-runas/"
  url "https://github.com/mmmorris1975/aws-runas/archive/2.0.5.tar.gz"
  sha256 "d00c9d947f4270e7c0e6e6c47a2f2ad89dc4b2d0f3adccdb2e541a449a6bb87c"

  bottle do
    root_url "https://dl.bintray.com/bram2000/bottles-custom"
    cellar :any_skip_relocation
    sha256 "1d59bd8b8fc617a0636311d28ffd5e8304ae630ec6a8e896006ca28d4fa15fa5" => :mojave
  end

  depends_on "go" => :build

  def install
    system "make", "VER=#{version}"
    bin.install "aws-runas"
  end

  test do
    system bin/"aws-runas", "--help"
  end
end
