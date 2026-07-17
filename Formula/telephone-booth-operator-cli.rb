class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.4.0"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.0/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "e457a2319fc25ecc2693e34a68bba407230e68629d2a4450e9b70eba68f97c3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.0/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0be13b6c8211e68f0854733067aeb92cac84ca0cbcbecd59c530948170ecf3b"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.0/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10275df8b97046e4f5ebec804523e7551a757255e9c3a273b5d0ea1684ce9e91"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
