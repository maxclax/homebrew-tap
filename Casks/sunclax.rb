cask "sunclax" do
  version "2026.10.18"
  sha256 "f01e77462710588158c8a6de76b1f295a232822016b63e1c1c19e00a6c944bc2"

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
