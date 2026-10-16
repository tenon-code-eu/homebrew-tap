# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Agent de code en terminal, souverain et auto-hébergeable"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.1.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.1.0/tenon_v0.1.0_darwin_arm64.tar.gz"
      sha256 "9f1f6861733eba010dfda850bf8a575f8f4eae7a8d45c3b14a48853b59e9387c"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.1.0/tenon_v0.1.0_darwin_amd64.tar.gz"
      sha256 "7f2c19c0fdb13cfa8465ae3031d32b45312d11ae2478970248ee36ffb777a018"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.1.0/tenon_v0.1.0_linux_arm64.tar.gz"
      sha256 "827ff6af333e111a3aa775a6074d1fb1f852fa43691aa0a9cd04806214ca016c"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.1.0/tenon_v0.1.0_linux_amd64.tar.gz"
      sha256 "74e01268c29e1828a8c5e69be4863767b56ff6f143f6caac52f28f052090da58"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md", "docs/utilisation.md", "docs/securite.md", "docs/config.example.toml"
  end

  test do
    assert_match "tenon v0.1.0", shell_output("#{bin}/tenon --version")
  end
end
