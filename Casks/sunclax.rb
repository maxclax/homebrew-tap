cask "sunclax" do
  version "2026.10.38"
  sha256 "914d025d9b580901de29de6a43d55803c63f471158de3afbf56d61d6dc4d41c7"

  url "https://dl.maxclax.com/Sunclax-#{version}.dmg"
  name "Sunclax"
  desc "Keystroke counter and typing trainer that never records what you type"
  homepage "https://maxclax.com/sunclax/"

  livecheck do
    url "https://maxclax.com/version.json"
    strategy :json do |json|
      json.dig("sunclax", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Sunclax.app"

  zap trash: [
    "~/Library/Application Support/Sunclax",
    "~/Library/Caches/com.maxclax.keysun",
    "~/Library/Containers/com.maxclax.keysun.widgets",
    "~/Library/Group Containers/KGGPSXD7H2.com.maxclax.keysun",
    "~/Library/HTTPStorages/com.maxclax.keysun",
    "~/Library/Preferences/com.maxclax.keysun.plist",
  ]
end
