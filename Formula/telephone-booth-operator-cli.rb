class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.6.1"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.1/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "82d6776a5e8cad19551d0d2a9a882ae5f0ce9c8e91798a61b9af0809bbea46b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.1/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccd646aef3524a1e908b7cf46272a2a089dc5096f1c5943bb86bae95aa54f4e4"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.1/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02dbf47f837dc8822b9d17d29eda33aa766d4801aaf861c1100077df89fdde04"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
