class AwsRunas < Formula
  desc "Friendly way to do AWS STS AssumeRole operations"
  homepage "https://github.com/mmmorris1975/aws-runas/"
  url "https://github.com/mmmorris1975/aws-runas/archive/1.3.4.tar.gz"
  sha256 "4b1e3fe48e470d0705c0d3064aaa0fbb32086976b007137478e5a8499053ab77"

  bottle do
    root_url "https://dl.bintray.com/bram2000/bottles-custom"
    cellar :any_skip_relocation
    rebuild 3
    sha256 "5508645f1353341a972d87d19a24e6e82033844708e62fe4700eeda4b794946b" => :mojave
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
