# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Iosdesignpatterntemplate < Formula
  desc ""
  homepage ""
  url "https://github.com/ImranHishaam/iOSDesignPatternTemplate/archive/v1.0.5.tar.gz"
  sha256 "b91d6d46ccacd013d249aa96b7e06773a6e461ec902db4d45befcef0a28077a6"

  # depends_on "cmake" => :build

  def install
    bin.install "viperscript"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test iOSDesignPatternTemplate`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end