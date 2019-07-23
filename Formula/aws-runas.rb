class AwsRunas < Formula
  desc "Friendly way to do AWS STS AssumeRole operations"
  homepage "https://github.com/mmmorris1975/aws-runas/"
  url "https://github.com/mmmorris1975/aws-runas/archive/1.3.4.tar.gz"
  sha256 "4b1e3fe48e470d0705c0d3064aaa0fbb32086976b007137478e5a8499053ab77"

  bottle do
    cellar :any_skip_relocation
    root_url "https://bintray.com/bram2000/bottles"
    sha256 "17be8dd502372ef5c441569bfff6b5f286f313436d6f7195a35032bf199f1304" => :mojave
  end

  depends_on "go" => :build

  def install
    system "make"
    bin.install "aws-runas"
  end

  test do
    system bin/"aws-runas", "--help"
  end
end
