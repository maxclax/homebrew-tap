cask "tempo" do
  version "2026.10.4"
  sha256 "e614eab1907b64783916c7c8432b9d598d1a3f8b2543d31bafc83377f9d7e9bc"

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
