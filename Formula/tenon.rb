# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.9.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.9.0/tenon_v0.9.0_darwin_arm64.tar.gz"
      sha256 "632b9483be33be6eceed727eae11f8d43dbcf64daaec8474f1c995ed24fbabe6"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.9.0/tenon_v0.9.0_darwin_amd64.tar.gz"
      sha256 "1291051d38a72be9be7ccc0c03ab2d289fe2d4a9555dca439d372b4a21d6023b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.9.0/tenon_v0.9.0_linux_arm64.tar.gz"
      sha256 "1a0c25841dfa49a2d1728df657440ae6176885dba66661ff4426f596e9768144"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.9.0/tenon_v0.9.0_linux_amd64.tar.gz"
      sha256 "e3f1c5c11b43ca0cfdd7d2f76a6604d8c3c59494410fa9ea9115634e94a606fe"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.9.0", shell_output("#{bin}/tenon --version")
  end
end
