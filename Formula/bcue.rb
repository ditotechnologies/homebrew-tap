class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.4"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.4/bcue-1.4.4-macos-aarch64.tar.gz"
      sha256 "6dfdea938876d4005d173df6d525a257fb9f458c9241e5b2125f4b9cec669ce3"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
