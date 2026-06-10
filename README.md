# kadetXx Homebrew tap

Homebrew cask for [KeyMIDI](https://github.com/kadetXx/keymidi).

```bash
brew install --cask kadetXx/tap/keymidi
xattr -dr com.apple.quarantine /Applications/KeyMIDI.app
```

The second line clears the quarantine flag (releases aren't signed/notarized
yet, so macOS blocks the app otherwise). Or skip it and approve the app under
**System Settings → Privacy & Security → Open Anyway** on first launch.
