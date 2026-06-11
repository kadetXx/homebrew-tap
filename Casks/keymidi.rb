cask "keymidi" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "6297d5aac4ee9fa2af571e12989a231d712145acc1afff57b87d4f4c5ad83d6a",
         intel: "b27c9ddd096acb5452bb785268b3749ec2374a223f1837e5aac5d068fd3dd07d"

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
