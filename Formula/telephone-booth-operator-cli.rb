class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.5.1"
  license "Apache-2.0"

  # Prebuilt binaries. The release pipeline regenerates this file
  # (version, urls, and sha256s) on each tagged, non-draft release.
  # macOS is Apple Silicon only; Linux covers x86_64 and arm64.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.1/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "ef6c328056c9a27242a6660857e4fecc3eaa595807686336fd153c8f21288fe7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.1/tb-operator-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddd9005400b0892c71d8b65cfd8d6e56f6efbf38d4f89a83f4fd75d10973b05c"
    end
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.5.1/tb-operator-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f7a6140fb4c37dfda37bbaebe05f1dc5491606130996a56a7f58fe296608ade"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
