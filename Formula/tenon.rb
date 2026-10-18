# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.3.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.3.0/tenon_v0.3.0_darwin_arm64.tar.gz"
      sha256 "03258084c223977219a3979b09cf127f1887c9089ccc6c1cb27ac06b8c6d5d92"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.3.0/tenon_v0.3.0_darwin_amd64.tar.gz"
      sha256 "a491b2b0ccf4603dc7e6ab868073c77abd8323d6ecb7e989c4c0df8bbf15e373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.3.0/tenon_v0.3.0_linux_arm64.tar.gz"
      sha256 "a23e90ed7931e8bb9f1d553e2703d9a82efd162444942499825c7c49f726f214"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.3.0/tenon_v0.3.0_linux_amd64.tar.gz"
      sha256 "31db53f04b942a4b540e216b22845402e3d12c481181c74edf4a780ed3a84f54"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.3.0", shell_output("#{bin}/tenon --version")
  end
end
