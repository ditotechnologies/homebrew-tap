class Bcue < Formula
  desc "Command-line tools for BrushCue Script"
  homepage "https://www.brushcue.com"
  version "1.4.0a3"

  on_macos do
    on_arm do
      url "https://github.com/ditotechnologies/brushcue/releases/download/brushcue-v1.4.0a3/bcue-1.4.0a3-macos-aarch64.tar.gz"
      sha256 "f8d2e94af85f5fc1811efa2885fc21e26e42a0c6e7d1e34f2c9623642ed2913d"
    end
  end

  def install
    bin.install "bcue"
  end

  test do
    system "#{bin}/bcue", "docs"
  end
end