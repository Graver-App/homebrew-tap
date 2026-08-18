# Graver Homebrew Tap

The Homebrew tap for [Graver](https://graver.dev), the native Mac workbench for
Looker + Dataform development.

Graver 0.1.0 is released. Signed with Developer ID and notarized by Apple.

## Install

```bash
brew install --cask graver-app/tap/graver
```

Or add the tap first, then install:

```bash
brew tap graver-app/tap
brew trust graver-app/tap
brew install --cask graver
```

The trust step is required, not advisory — without it `install` stops with
*"Refusing to load cask … from untrusted tap"*. Tap, trust, install, in that
order:

```bash
brew tap graver-app/tap
brew trust graver-app/tap
brew install --cask graver
```
