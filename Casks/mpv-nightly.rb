cask "mpv-nightly" do
  version "11770447601"
  sha256 "f3698808a126b682dc8eefcdd0c89e710c05b339f246a4218760e3630dd0cc05"

  url "https://nightly.link/mpv-player/mpv/workflows/build/master/mpv-macos-15-arm.zip"
  name "mpv-nightly"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
end
