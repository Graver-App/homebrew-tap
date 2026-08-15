# Graver Homebrew Tap

The Homebrew tap for [Graver](https://graver.dev), the native Mac workbench for
Looker + Dataform development.

Graver is in development; the cask lands here with the first release.

## Install (once released)

```bash
brew install --cask graver-app/tap/graver
```

Or add the tap first, then install:

```bash
brew tap graver-app/tap
brew install --cask graver
```

On Homebrew 6+, third-party taps require a one-time trust grant:

```bash
brew tap graver-app/tap
brew trust graver-app/tap
brew install --cask graver
```
