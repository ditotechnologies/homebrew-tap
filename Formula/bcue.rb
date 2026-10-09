class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.11"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.11/bcue-1.4.11-macos-aarch64.tar.gz"
      sha256 "4e4312ffe6e4404a40ffad1eddebb813e6aa7d3fb067291a63e67724d56d87c0"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
