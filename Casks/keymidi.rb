cask "keymidi" do
  arch arm: "arm64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "b90b452da151f7c45bc450b687aab4e6abafb27917618a693a80c8b1761141f9",
         intel: "1c182ca5e8625086aad8635f26485601d56ff894d56eac2d62d840cd433a3600"

  url "https://github.com/kadetXx/keymidi/releases/download/v#{version}/KeyMIDI-#{version}-#{arch}.dmg"
  name "KeyMIDI"
  desc "Turn your typing keyboard into a chord-grammar MIDI controller"
  homepage "https://github.com/kadetXx/keymidi"

  app "KeyMIDI.app"

  caveats <<~CAVEAT
    KeyMIDI needs the macOS Accessibility permission for its global keyboard
    hook: System Settings → Privacy & Security → Accessibility → enable KeyMIDI.
  CAVEAT
end
