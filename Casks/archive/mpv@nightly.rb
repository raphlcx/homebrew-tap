cask "mpv@nightly" do
  version "22038346825"
  sha256 "2891a4de39558ebdc24cc5bf66640089ba5d38a309679f7d671b73d71aba6b70"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-v0.41.0-dev-gaa8221372-#{version}-macos-26-arm.zip"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
