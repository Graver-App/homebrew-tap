cask "graver" do
  version "0.2.0"
  sha256 "9b53a53f38cd9063c4ddb504c6843fa749acb6f8ca203f46cddb2dea7a455c3b"

  url "https://github.com/Graver-App/homebrew-tap/releases/download/v#{version}/Graver.dmg"
  name "Graver"
  desc "Agent-native workbench for Looker and BigQuery/Dataform"
  homepage "https://graver.dev/"

  # Sparkle updates the app in place from 0.2.0 on (Graver-App/graver#12).
  auto_updates true
  depends_on macos: :ventura

  app "Graver.app"
  binary "#{appdir}/Graver.app/Contents/Resources/graver"

  zap trash: [
    "~/Library/Application Support/dev.graver.app",
    "~/Library/Application Support/Graver",
    "~/Library/Caches/dev.graver.app",
    "~/Library/Caches/dev.graver.app.sparkle",
    "~/Library/HTTPStorages/dev.graver.app",
    "~/Library/Logs/Graver",
    "~/Library/Preferences/dev.graver.app.plist",
    "~/Library/Saved Application State/dev.graver.app.savedState",
  ]
end
