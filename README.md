# MaphicalYng's Homebrew Tap

[English](README.md) | [简体中文](README.zh-CN.md)

A personal Homebrew tap for prebuilt desktop applications.

## Available packages

| Package | Type | Platforms |
| --- | --- | --- |
| `revision` | Cask | macOS (Apple Silicon, Intel), Linux (x86_64) |

## Install

Add the tap once:

```bash
brew tap MaphicalYng/tap
```

Install revision on macOS with `--no-quarantine`, since the app is not currently signed with an Apple Developer certificate:

```bash
brew install --cask --no-quarantine MaphicalYng/tap/revision
```

Alternatively, disable quarantine by default for all Cask installations:

```bash
export HOMEBREW_CASK_OPTS="--no-quarantine"
brew install --cask MaphicalYng/tap/revision
```

## Upgrade

```bash
brew update
brew upgrade --cask MaphicalYng/tap/revision
```

## Uninstall

```bash
brew uninstall --cask revision
```

After uninstalling all packages from this tap, you can remove it:

```bash
brew untap MaphicalYng/tap
```
