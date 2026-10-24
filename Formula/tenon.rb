# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.7.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.7.0/tenon_v0.7.0_darwin_arm64.tar.gz"
      sha256 "15b681bd1c2f2cf7ed9c047816ca1ef05820f908d0be601a65e49fa5adee3bb7"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.7.0/tenon_v0.7.0_darwin_amd64.tar.gz"
      sha256 "fe0b04f3e91f2ca167102b110ccd608297bcb3f043e347955c29570482e4cbcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.7.0/tenon_v0.7.0_linux_arm64.tar.gz"
      sha256 "536a2346fb0e41597513a3154f2c3889f1ae21688340b80b441814fb0606508e"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.7.0/tenon_v0.7.0_linux_amd64.tar.gz"
      sha256 "2b2b0420c01e4c70cb3ad5d6952dbb6b6e8aad811357e603d7dfdc5aa192d4a4"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.7.0", shell_output("#{bin}/tenon --version")
  end
end
