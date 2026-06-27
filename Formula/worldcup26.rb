class Worldcup26 < Formula
  desc "Fast, keyboard-driven terminal UI for the FIFA World Cup 2026"
  homepage "https://github.com/djensenius/WorldCup-2026"
  version "0.3.1"
  license "Apache-2.0"

  # The release pipeline updates the version, url, and sha256 values below on
  # each tagged release. macOS builds ship for both Apple Silicon and Intel.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/WorldCup-2026/releases/download/v0.3.1/worldcup26-aarch64-apple-darwin.tar.gz"
      sha256 "9be211d3e93acb520ae51caa0e36baf62d6779c9de8d92d5fedd9f3f0e63eff5"
    end
    on_intel do
      url "https://github.com/djensenius/WorldCup-2026/releases/download/v0.3.1/worldcup26-x86_64-apple-darwin.tar.gz"
      sha256 "d6827bf633d981f92028c37c898e4ec152189b41624ab8642f5d95b17363769b"
    end
  end

  def install
    bin.install "worldcup26"
    man1.install "worldcup26.1"
    bash_completion.install "completions/worldcup26"
    zsh_completion.install "completions/_worldcup26"
    fish_completion.install "completions/worldcup26.fish"
  end

  test do
    assert_match "worldcup26", shell_output("#{bin}/worldcup26 --version")
  end
end
