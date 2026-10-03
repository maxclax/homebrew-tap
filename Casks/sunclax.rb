cask "sunclax" do
  version "2026.10.17"
  sha256 "6bc90530e687ce998d4acabdda32ced9d2b7aeecd71512c8f749b92615b328e2"

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
