cask "mpv@nightly" do
  version "17750851503"
  sha256 "f59a2957759b1c5e250f38b46c6c1fcce072a8b8963442e538039b7951220eec"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-15-arm.zip"
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
