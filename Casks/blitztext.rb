cask "blitztext" do
  version "1.7.1"
  sha256 "0e55aa5e9882ac7d14ad145c47c66adc9929d1b7f4619433062c77511ec21940"

  url "https://github.com/immodigit/blitztext-app/releases/download/v#{version}/Blitztext-#{version}.dmg"
  name "Blitztext"
  desc "Menüleisten-App für Sprache-zu-Text: Diktat, Umformen und Emojis"
  homepage "https://github.com/immodigit/blitztext-app"

  # Neuere Versionen ermittelt Homebrew über die GitHub-Releases.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Blitztext.app"

  uninstall quit: "app.blitztext.mac"

  # Beim `brew uninstall --zap` auch die lokalen Daten (inkl. Transkript-Verlauf) entfernen.
  zap trash: [
    "~/Library/Application Support/Blitztext",
    "~/Library/Preferences/app.blitztext.mac.plist",
    "~/Library/Saved Application State/app.blitztext.mac.savedState",
  ]
end
