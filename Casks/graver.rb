cask "graver" do
  version "0.4.1"
  sha256 "be40a271607cbdc84e4f012e20e2ed51965c00be62b90a5bcd4e20e2d5668fbf"

  url "https://github.com/Graver-App/homebrew-tap/releases/download/v#{version}/Graver.dmg"
  name "Graver"
  desc "Agent-native workbench for Looker and BigQuery/Dataform"
  homepage "https://graver.dev/"

  # Sparkle updates the app in place from 0.2.0 on (Graver-App/graver#12).
  auto_updates true
  depends_on macos: :ventura

  app "Graver.app"
  binary "#{appdir}/Graver.app/Contents/Resources/graver"
  # The headless LookML audit CLI, in the bundle from 0.4.0 (Graver-App/graver#23).
  # It could only be built from source before this release, and it is the only way
  # to reach --record-bigquery / --replay-bigquery.
  binary "#{appdir}/Graver.app/Contents/MacOS/graver-lookml"

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
