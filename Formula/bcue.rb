class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.13"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.13/bcue-1.4.13-macos-aarch64.tar.gz"
      sha256 "c7b1c0fe16160b8d2068e72e88206c016831e1abbadd0df798b211c4cc881049"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
