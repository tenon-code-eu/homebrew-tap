# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.10.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.10.0/tenon_v0.10.0_darwin_arm64.tar.gz"
      sha256 "c03e95bd569a75c0256e8815d74e8c6e9fb580ca000e01c992a0b98ef471010c"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.10.0/tenon_v0.10.0_darwin_amd64.tar.gz"
      sha256 "3e8a2633c68bacc062d985b7f208d5a78e9667f30b1ac330c89d1d61bdb82bb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.10.0/tenon_v0.10.0_linux_arm64.tar.gz"
      sha256 "3a930a94367da3f1ba903360f90d735b262b48b283ddc907016920cbf16cc83b"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.10.0/tenon_v0.10.0_linux_amd64.tar.gz"
      sha256 "76d7b20d9d2243dc07f3aef42af2428e0ffb40ef6d6a987af058999a33d021d8"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.10.0", shell_output("#{bin}/tenon --version")
  end
end
