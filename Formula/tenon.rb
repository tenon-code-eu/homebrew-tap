# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.6.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.6.0/tenon_v0.6.0_darwin_arm64.tar.gz"
      sha256 "3009f9ce8bdf88ee377fec9c9e8aa0cc182090bece306210f85a23ae27ca6d0b"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.6.0/tenon_v0.6.0_darwin_amd64.tar.gz"
      sha256 "7bd3bd81ea455978d3e65fb5eda9d51da41aa59cc6183fe05d5e8500b43bf300"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.6.0/tenon_v0.6.0_linux_arm64.tar.gz"
      sha256 "d06ff36923a88ebef3c17672a9b7fb6694487a1b141e6b20449cdd1799a8a180"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.6.0/tenon_v0.6.0_linux_amd64.tar.gz"
      sha256 "96a84959fd8083a4727a30b30f2bcf09b1b9c2365836584c65c7f7975fbc4299"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.6.0", shell_output("#{bin}/tenon --version")
  end
end
