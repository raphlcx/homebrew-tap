cask "sass" do
  version "1.71.1"
  sha256 "2c2d50cdda68c1110fc28f773338cc5641e24dc5c72c792ef8fcff83c3adba42"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
