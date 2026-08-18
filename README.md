# Graver Homebrew Tap

The Homebrew tap for [Graver](https://graver.dev), the native Mac workbench for
Looker + Dataform development.

Graver 0.1.0 is released. Signed with Developer ID and notarized by Apple.

## Install

```bash
brew tap graver-app/tap
brew trust graver-app/tap
brew install --cask graver
```

Tap, trust, install — in that order. The trust step is required rather than
advisory: Homebrew refuses to load casks from taps outside its own
repositories, and without it the last command stops with *"Refusing to load
cask … from untrusted tap"*.

Installs `Graver.app` and a `graver` command for opening files and folders from
the terminal:

```bash
graver .                    # open the current folder as a workspace
graver views/orders.view.lkml
```

Requires macOS 13 (Ventura) or later. Universal — Apple Silicon and Intel.

## Upgrading

```bash
brew upgrade --cask graver
```

## Uninstalling

```bash
brew uninstall --cask graver          # removes the app
brew uninstall --zap --cask graver    # also removes settings and saved state
```

## Why the DMG lives here

Graver's source repository is private. Release assets on this public tap are
what make the binary installable without opening the source.
