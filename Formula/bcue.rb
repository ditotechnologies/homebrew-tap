class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.6"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.6/bcue-1.4.6-macos-aarch64.tar.gz"
      sha256 "6f19dcb073187b53b5b71ccc5e3ac14b4aff2f3527abf56282b5a9f985af5d67"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
