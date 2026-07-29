class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.6.0"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.0/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "4c1253eee992f3b0c9c5e1643c9f3e858d45a36d019bf5abd1a9a83df4d1ec06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.0/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91d8b8f1f184b0cdd84c3615ae30509a6a991d50b21eee5e0669722aa336b35a"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.6.0/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a98a4db1dd5fc87b10cfbbebaba468e0f381a83221251cdd0f259cbc6d58b209"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
