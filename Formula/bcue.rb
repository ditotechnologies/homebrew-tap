class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.5"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.5/bcue-1.4.5-macos-aarch64.tar.gz"
      sha256 "986630a13a59261964c21285bad4df53e0029ed584b29a71bc9c96ab31b8ed13"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
