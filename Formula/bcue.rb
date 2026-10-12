class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.12"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.12/bcue-1.4.12-macos-aarch64.tar.gz"
      sha256 "6e497ce9a133d5e2605f9ec247d980b7e137809ed39c61f47f2bb6670860fd36"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
