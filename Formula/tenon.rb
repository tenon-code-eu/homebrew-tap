# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.4.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.4.0/tenon_v0.4.0_darwin_arm64.tar.gz"
      sha256 "64e7abb5786183d6d811eb27a858888b061757deea6a245e2611d2f4c08cdec8"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.4.0/tenon_v0.4.0_darwin_amd64.tar.gz"
      sha256 "9623f9b04859a84e2741967b25cb25b0a57754dd15aeadb87255d2b01ca0e9ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.4.0/tenon_v0.4.0_linux_arm64.tar.gz"
      sha256 "50a3abd3bdba9c787ae9b903356aa6cf71a75c5a2aa3db43cf60067435d8a8f5"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.4.0/tenon_v0.4.0_linux_amd64.tar.gz"
      sha256 "1e763a10ea5d05c24fa0cea18c83c69930a276314c2a0c1e927d97824acbdb0f"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.4.0", shell_output("#{bin}/tenon --version")
  end
end
