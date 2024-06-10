cask "rpcs3" do
  version "0.0.32-16586,0b22423ab83cd4816e7ffa8ab6947a240fe637c8"
  sha256 "4a67521236a5d15499c85c9d59f1f990b5b8fdbc65bf346080615328665684d6"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.second[0..7]}_macos.7z"
  name "RPCS3"
  desc "PlayStation 3 emulator"
  homepage "https://rpcs3.net/"

  auto_updates true

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
