cask "keymidi" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "559d5c3c4c6646448048556d3b227e97c0363591882f4dec32fec7b37df6f309",
         intel: "bc35602d605ee359cc0e6be168dbac1bf5f912332f94633adf7f0b2c207b8537"

  url "https://github.com/kadetXx/keymidi/releases/download/v#{version}/KeyMIDI-#{version}-#{arch}.dmg"
  name "KeyMIDI"
  desc "Turn your typing keyboard into a chord-grammar MIDI controller"
  homepage "https://github.com/kadetXx/keymidi"

  app "KeyMIDI.app"

  caveats <<~CAVEAT
    KeyMIDI needs the macOS Accessibility permission for its global keyboard
    hook: System Settings → Privacy & Security → Accessibility → enable KeyMIDI.

    Releases are not yet signed/notarized, so macOS quarantines the app on
    install. Clear it once with:
      xattr -dr com.apple.quarantine "/Applications/KeyMIDI.app"
    or approve it under System Settings → Privacy & Security → Open Anyway.
  CAVEAT
end
