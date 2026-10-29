class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.12"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.12/bcue-1.4.12-macos-aarch64.tar.gz"
      sha256 "0b3c7e7fe921d4ce98e0dce96402fb56f28d4f87fbcfd6656c95cb6079256db3"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
