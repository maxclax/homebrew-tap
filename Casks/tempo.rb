cask "tempo" do
  version "2026.10.15"
  sha256 "3c1ea933d6b569628ce63e717acf046223d6acd194d8d0c1fc37c27314352d94"

  url "https://dl.maxclax.com/Tempo-#{version}.dmg"
  name "Triada Tempo"
  desc "Three outcomes for every day, week, month and year, kept in plain-text files"
  homepage "https://maxclax.com/tempo/"

  livecheck do
    url "https://maxclax.com/version.json"
    strategy :json do |json|
      json.dig("tempo", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Caches/com.maxclax.tempo",
    "~/Library/Containers/com.maxclax.tempo.widgets",
    "~/Library/Group Containers/KGGPSXD7H2.com.maxclax.tempo",
    "~/Library/HTTPStorages/com.maxclax.tempo",
    "~/Library/Preferences/com.maxclax.tempo.plist",
    "~/Library/Saved Application State/com.maxclax.tempo.savedState",
  ]
end
