cask "sass" do
  version "1.69.5"
  sha256 "17b1411fc0643abae391493365e51789bc42cb24fb9f43e9a9c98da0f00e405a"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
