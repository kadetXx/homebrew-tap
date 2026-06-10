cask "keymidi" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "2795188f85e8d2ad136747de946123c130aca3177366356f09b463e28fcf99c6",
         intel: "e2eab318783b45ec41f099785ac06310350bdccf546d9879d2da848d8e30f17d"

  url "https://github.com/kadetXx/keymidi/releases/download/v#{version}/KeyMIDI-#{version}-#{arch}.dmg"
  name "KeyMIDI"
  desc "Turn your typing keyboard into a chord-grammar MIDI controller"
  homepage "https://github.com/kadetXx/keymidi"

  app "KeyMIDI.app"

  caveats <<~CAVEAT
    KeyMIDI needs the macOS Accessibility permission for its global keyboard
    hook: System Settings → Privacy & Security → Accessibility → enable KeyMIDI.

    Early releases are not yet signed/notarized, so install with --no-quarantine
    (otherwise macOS will refuse to open the app):
      brew install --cask --no-quarantine kadetXx/tap/keymidi
  CAVEAT
end
