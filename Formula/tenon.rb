# Fichier généré par scripts/homebrew-formula.sh (dépôt tenon-code-eu/tenon) : ne pas modifier.
class Tenon < Formula
  desc "Sovereign, self-hostable terminal coding agent"
  homepage "https://github.com/tenon-code-eu/tenon"
  version "0.5.0"
  license "EUPL-1.2"

  on_macos do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.5.0/tenon_v0.5.0_darwin_arm64.tar.gz"
      sha256 "7add52d635f67e4c5a407702722ca63d7e0fd3c87c992a284764321018d59260"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.5.0/tenon_v0.5.0_darwin_amd64.tar.gz"
      sha256 "42e39f6ed31fb3933eef1ccbd5a2c1ede281324d795ed7adb0040727ef1d4925"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.5.0/tenon_v0.5.0_linux_arm64.tar.gz"
      sha256 "7e5426973ea72bb407466f6de0ba2c8889f3efacf96f3589eba33d6173e97b57"
    end
    on_intel do
      url "https://github.com/tenon-code-eu/tenon/releases/download/v0.5.0/tenon_v0.5.0_linux_amd64.tar.gz"
      sha256 "4efe234b9562e66b025655a5caf61647672dc52c1d3298186ad09609b9dd2c5e"
    end
  end

  def install
    bin.install "tenon"
    doc.install "README.md"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match "tenon v0.5.0", shell_output("#{bin}/tenon --version")
  end
end
