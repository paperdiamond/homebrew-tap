# 🍺 Homebrew Tap

Custom Homebrew formulae by [paperdiamond](https://github.com/paperdiamond).

## Installation

```bash
brew tap paperdiamond/tap
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| [iterm-styler](https://github.com/paperdiamond/iterm-styler) | Style your iTerm2 tabs with custom titles, emoji icons, and colors |

### Install iterm-styler

```bash
brew install paperdiamond/tap/iterm-styler
```

Or:

```bash
brew tap paperdiamond/tap
brew install iterm-styler
```

---

## 🚀 Releasing New Versions

When updating a formula for a new release:

### 1. Tag the new version in the source repo

```bash
cd /path/to/iterm-styler
git tag v1.x.x
git push origin v1.x.x
```

### 2. Get the new SHA256 checksum

```bash
curl -sL https://github.com/paperdiamond/iterm-styler/archive/refs/tags/v1.x.x.tar.gz | shasum -a 256
```

### 3. Update the formula

Edit `Formula/iterm-styler.rb`:
- Update the `url` with the new tag
- Update the `sha256` with the new checksum

### 4. Commit and push

```bash
git add Formula/iterm-styler.rb
git commit -m "iterm-styler v1.x.x"
git push
```

### 5. Users upgrade with

```bash
brew update && brew upgrade iterm-styler
```
