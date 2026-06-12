class TelephoneBoothOperatorCli < Formula
  desc "Terminal operator console (TUI) for the Telephone-Booth installation"
  homepage "https://github.com/djensenius/Telephone-Booth-Operator-cli"
  version "0.0.0"
  license "Apache-2.0"

  # macOS builds are Apple Silicon only. The release pipeline updates the
  # version, url, and sha256 below on each tagged release.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/Telephone-Booth-Operator-cli/releases/download/v0.0.0/tb-operator-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "tb-operator"
  end

  test do
    assert_match "tb-operator", shell_output("#{bin}/tb-operator --version")
  end
end
