# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.2.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.2.0/tenon_v0.2.0_darwin_arm64.tar.gz"
      sha256 "d63017da83a6e3ac96bc17172a2311b6c2757aaa8e014191a820dfbb4357c568"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.2.0/tenon_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c8f57dd3814d059897db662acfeba873e545e0ef9ddf0334028c95a259d8e02b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.2.0/tenon_v0.2.0_linux_arm64.tar.gz"
      sha256 "055841bbbdc39817aaa0050779bffeb9d5132c77eb94d139556325f20d2d937a"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.2.0/tenon_v0.2.0_linux_amd64.tar.gz"
      sha256 "54d667db94b23715032a53c46cb7751a8e52fcc920c93a06492385a50853585b"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.2.0", shell_output("#{bin}/tenon --version")
  end
end
