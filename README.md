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

Install revision:

```bash
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
