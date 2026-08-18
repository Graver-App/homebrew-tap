cask "graver" do
  version "0.1.1"
  sha256 "1d9cfc4871dbf9a24304f68e2a1e396c8bb0e49bf4555afbaae41fb52ddc605b"

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
