class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.5.0"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.0/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "d083d0c7ae99eec381386a9d0d99f9a6fb41fafa52ede184a4ef9c925c0eb4d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.0/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf7cde529b1d9b10d2ceeb93779794c1717cf02bd78a6b77ff58f4d9c91a2705"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.0/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2315304d254c2e110ff5401ebc45aa43529bb89e52596d9f6e006e724acd984a"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
