cask "graver" do
  version "0.1.0"
  sha256 "d5986044913d538c0a833d7ac200e6f6bdf24f3d99aa6e4e5715dd79d9ee8858"

  url "https://github.com/Graver-App/homebrew-tap/releases/download/v#{version}/Graver.dmg"
  name "Graver"
  desc "Agent-native workbench for Looker and BigQuery/Dataform"
  homepage "https://graver.dev/"

  depends_on macos: :ventura

  app "Graver.app"
  binary "#{appdir}/Graver.app/Contents/Resources/graver"

  zap trash: [
    "~/Library/Application Support/Graver",
    "~/Library/Application Support/dev.graver.app",
    "~/Library/Caches/dev.graver.app",
    "~/Library/Logs/Graver",
    "~/Library/Preferences/dev.graver.app.plist",
    "~/Library/Saved Application State/dev.graver.app.savedState",
  ]
end
