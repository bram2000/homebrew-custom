class AwsRunas < Formula
  desc "Friendly way to do AWS STS AssumeRole operations"
  homepage "https://github.com/mmmorris1975/aws-runas/"
  url "https://github.com/mmmorris1975/aws-runas/archive/1.5.0.tar.gz"
  sha256 "1071a2e08f45dd0a21afe2bc77c3605722d406cd293536a6775ad232187dea13"

  bottle do
    root_url "https://dl.bintray.com/bram2000/bottles-custom"
    cellar :any_skip_relocation
    sha256 "d091934658ea6e9abf03c3ab8b105268e42109e17224ceba1f3ed20660a6c6be" => :mojave
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
