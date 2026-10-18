class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.7.0"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.7.0/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "482c2bd8aa3ed4023cbb11186f1dc25e7a70e885d967b11f0a0537274a2a71e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.7.0/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d3cbd9c4be1d8130abf66b38c3dff4d29222ce11b8719404e9fe6ab057f51cd"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.7.0/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc4154cab5c62e9dacacdd8c368a31748b1af2da230239cc655e022953317229"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
