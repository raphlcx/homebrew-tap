cask "sass" do
  version "1.86.3"
  sha256 "df70f9f3994f1237e960e3270cce447ddb4e14902ada9d514bda840907eeaaef"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
