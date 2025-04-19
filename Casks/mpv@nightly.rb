cask "mpv@nightly" do
  version "14533440437"
  sha256 "d17f0d71ad82b55946c8b0aca2f52cb147493b3b2e3dc743180986eae17ad19c"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-15-arm.zip"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
