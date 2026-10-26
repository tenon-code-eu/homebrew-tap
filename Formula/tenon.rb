# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.8.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.8.0/tenon_v0.8.0_darwin_arm64.tar.gz"
      sha256 "0ff0c8b5f81d51d01fafe8bc9e79f86edd865d1ed091d0123519d3fc054a73cb"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.8.0/tenon_v0.8.0_darwin_amd64.tar.gz"
      sha256 "a7681a8790fa1040399604e47bc3730e206f0da0f6f955b017e57f32446ccfbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.8.0/tenon_v0.8.0_linux_arm64.tar.gz"
      sha256 "f3afa8eb906b5cda934e9afa35d8979ebe65366bb760c83111a573a567ffe619"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.8.0/tenon_v0.8.0_linux_amd64.tar.gz"
      sha256 "2f1b0b93c72dce045b7b6f9284d72722ef8dec40fe18d770ab74d96c89feb6c0"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.8.0", shell_output("#{bin}/tenon --version")
  end
end
