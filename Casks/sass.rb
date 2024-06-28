cask "sass" do
  version "1.77.5"
  sha256 "ff72c376fe4252484c77f2887bb0684cc7169f79c9a3cc1107b0adc2c74c257d"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
