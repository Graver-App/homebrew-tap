# Graver Homebrew Tap

The Homebrew tap for [Graver](https://graver.dev), the native Mac workbench for
Looker + Dataform development.

Releases are signed with Developer ID and notarized by Apple. The version this
tap installs is whatever `Casks/graver.rb` names — currently 0.1.1.

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

Two things Graver uses but does not bundle: **Node**, because Dataform runs
through `npx @dataform/cli` pinned to the project's own `dataformCoreVersion`,
and **application-default credentials** (`gcloud auth application-default
login`) for the BigQuery work. Graver stores no credentials of its own.

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
