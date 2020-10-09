require 'formula'

class Gtest < Formula
  desc "Google Test"
  homepage "https://github.com/google/googletest"
  head "git://github.com/google/googletest.git", :using => :git

  stable do
    url "https://github.com/google/googletest/archive/release-1.10.0.tar.gz"
  end

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_CXX_STANDARD=11", *std_cmake_args
      system "make", "install"
    end
  end
end
