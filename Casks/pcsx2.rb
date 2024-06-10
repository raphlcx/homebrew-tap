cask "pcsx2" do
  version "1.7.5881"
  sha256 "9eff797e946963b429516b42d9dc433053b24c0e23604db24989cc12740687ee"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz"
  name "PCSX2"
  desc "PlayStation 2 emulator"
  homepage "https://pcsx2.net/"

  auto_updates true

  app "PCSX2-v#{version}.app", target: "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]
end
