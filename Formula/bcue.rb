class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.0/bcue-1.4.0-macos-aarch64.tar.gz"
      sha256 "1f0dc697237e0c98903389699abe97c97e4a2788bc449d7aa3fcf28d55618037"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end
