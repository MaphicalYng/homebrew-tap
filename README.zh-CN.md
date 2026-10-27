# MaphicalYng 的 Homebrew Tap

[English](README.md) | [简体中文](README.zh-CN.md)

用于分发预编译桌面应用的个人 Homebrew Tap。

## 可用软件包

| 软件包 | 类型 | 平台 |
| --- | --- | --- |
| `revision` | Cask | macOS（Apple Silicon、Intel）、Linux（x86_64） |

## 安装

首次使用时添加 Tap：

```bash
brew tap MaphicalYng/tap
```

在 macOS 上安装 revision：

```bash
brew install --cask MaphicalYng/tap/revision
```

由于 revision 目前未使用 Apple 开发者证书签名，如果 macOS 阻止应用打开，且你信任此发布版本，可以仅移除该应用的下载隔离属性：

```bash
xattr -dr com.apple.quarantine /Applications/revision.app
```

## 升级

```bash
brew update
brew upgrade --cask MaphicalYng/tap/revision
```

## 卸载

```bash
brew uninstall --cask revision
```

卸载此 Tap 中的所有软件包后，可以移除 Tap：

```bash
brew untap MaphicalYng/tap
```
