# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Iosdesignpatterntemplate < Formula
  desc "Desing pattern templating"
  homepage "https://github.com/ImranHishaam/iOSDesignPatternTemplate/"
  url "https://github.com/ImranHishaam/iOSDesignPatternTemplate/archive/v1.0.0.tar.gz"
  sha256 "f3c2210a9e6b0d1f6c894ffa91572c024f616c44d43cafc094daa0620956e50d"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
     system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
    
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
