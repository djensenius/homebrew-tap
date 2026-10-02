class BacklogSync < Formula
  desc "Mirror Backlog.md tasks to GitHub Issues and Projects"
  homepage "https://github.com/djensenius/backlog-sync"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djensenius/backlog-sync/releases/download/v0.1.0/backlog-sync_0.1.0_darwin_arm64.tar.gz"
      sha256 "366d6faa24f6fa13628fddd580f3f2c3d3c8c28d475d5cf1257047ff4636edc2"
    elsif Hardware::CPU.intel?
      url "https://github.com/djensenius/backlog-sync/releases/download/v0.1.0/backlog-sync_0.1.0_darwin_amd64.tar.gz"
      sha256 "05b35c12817006b299ac43b80d840bcf419c26668de7261b5ec8327bda32409d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/djensenius/backlog-sync/releases/download/v0.1.0/backlog-sync_0.1.0_linux_arm64.tar.gz"
      sha256 "f3b917e77dd34019621de872fcf112c467d0bc7c638c19d1e907d37caa548139"
    elsif Hardware::CPU.intel?
      url "https://github.com/djensenius/backlog-sync/releases/download/v0.1.0/backlog-sync_0.1.0_linux_amd64.tar.gz"
      sha256 "fd9a574c0898ed6689c2ac1cee7a77e28a8490924de5a76b2a51f4dbfcba9334"
    end
  end

  def install
    bin.install "backlog-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backlog-sync --version")
  end
end
