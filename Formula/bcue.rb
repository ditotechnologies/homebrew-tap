class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.10"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.10/bcue-1.4.10-macos-aarch64.tar.gz"
      sha256 "9f8083f387cdaac35ea204371828aed34f0288c6b57454915f1efe5534d60b58"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
