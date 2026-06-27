class Worldcup26 < Formula
  desc "Fast, keyboard-driven terminal UI for the FIFA World Cup 2026"
  homepage "https://github.com/djensenius/WorldCup-2026"
  version "0.4.0"
  license "Apache-2.0"

  # The release pipeline updates the version, url, and sha256 values below on
  # each tagged release. macOS builds ship for both Apple Silicon and Intel.
  on_macos do
    on_arm do
      url "https://github.com/djensenius/WorldCup-2026/releases/download/v0.4.0/worldcup26-aarch64-apple-darwin.tar.gz"
      sha256 "8609a435deedb9de7c3453935254c8adc8b401feaafd03aff3cadab373d17bc3"
    end
    on_intel do
      url "https://github.com/djensenius/WorldCup-2026/releases/download/v0.4.0/worldcup26-x86_64-apple-darwin.tar.gz"
      sha256 "d7e5501b049d24caa397065731737eb72b80e132ef88079705f0c0df82ffaed3"
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
