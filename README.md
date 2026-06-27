# homebrew-tap

Homebrew tap for [David Jensenius](https://github.com/djensenius)'s tools.

## Usage

```sh
brew tap djensenius/tap

# Terminal operator console for Telephone-Booth
brew install telephone-booth-operator-cli

# World Cup 2026 terminal UI
brew install worldcup26
```

`telephone-booth-operator-cli` installs the `tb-operator` binary — the terminal
operator console for the
[Telephone-Booth](https://github.com/djensenius/Telephone-Booth) installation.

`worldcup26` installs the `worldcup26` binary — a fast, keyboard-driven terminal
UI for the [FIFA World Cup 2026](https://github.com/djensenius/WorldCup-2026).

> **Note:** `telephone-booth-operator-cli` ships Apple Silicon (arm64) only.
> `worldcup26` ships for both Apple Silicon (arm64) and Intel (x86_64).

## Formulae

| Formula | Description |
| --- | --- |
| `telephone-booth-operator-cli` | Terminal operator console (`tb-operator`) for the Telephone-Booth installation |
| `worldcup26` | Terminal UI (`worldcup26`) for the FIFA World Cup 2026 |

Formula versions are updated automatically by each project's release pipeline.
