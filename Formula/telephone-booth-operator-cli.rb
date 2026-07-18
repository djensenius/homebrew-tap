class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.4.1"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.1/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "bf2b9da64587c73e3fb5614a6bd0c92c1493627fe3c39f7eb1825af65ccd50ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.1/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5df2b9d3b2702ceecace046cdee811dc92d1f788005ba63763791da53ecbfc4"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.4.1/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73d3a808315bfe797b456aec5a4aa5010f3936790591365068002dce66a5be15"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
