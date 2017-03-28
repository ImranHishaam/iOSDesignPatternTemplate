# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Iosdesignpatterntemplate < Formula
  desc ""
  homepage ""
  url "https://github.com/ImranHishaam/iOSDesignPatternTemplate/archive/v1.0.7.tar.gz"
  sha256 "b4f6816cdfb3d45431ab178ed1008cc24d022ddd4759866df152c8b60dd404c8"

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
