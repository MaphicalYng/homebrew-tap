# MaphicalYng's Homebrew Tap

[English](README.md) | [简体中文](README.zh-CN.md)

A personal Homebrew tap for prebuilt desktop applications.

## Available packages

| Package | Type | Platforms |
| --- | --- | --- |
| `revision` | Cask | macOS (Apple Silicon, Intel), Linux (x86_64) |
| `pi-web` | Cask | macOS (Apple Silicon) |

## Install

Add the tap once:

```bash
brew tap MaphicalYng/tap
```

Install revision on macOS:

```bash
brew install --cask MaphicalYng/tap/revision
```

Install pi-web on Apple Silicon macOS (12 or later):

```bash
brew install --cask MaphicalYng/tap/pi-web
```

These apps are not currently signed with an Apple Developer certificate. If macOS prevents one from opening, and you trust this release, remove the quarantine attribute from that app only:

```bash
xattr -dr com.apple.quarantine "/Applications/revision.app"
xattr -dr com.apple.quarantine "/Applications/Pi Web.app"
```

## Upgrade

```bash
brew update
brew upgrade --cask MaphicalYng/tap/revision
brew upgrade --cask MaphicalYng/tap/pi-web
```

## Uninstall

```bash
brew uninstall --cask revision
brew uninstall --cask pi-web
```

After uninstalling all packages from this tap, you can remove it:

```bash
brew untap MaphicalYng/tap
```
