cask "sunclax" do
  version "2026.10.40"
  sha256 "f41399b76736c11366c25715ba6ffad5d20aaa083234fb587115d407d3a5e001"

  url "https://dl.maxclax.com/Sunclax-#{version}.dmg"
  name "Sunclax"
  desc "Touch-typing trainer with lessons built from the letters you type most"
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
