cask "sass" do
  version "1.89.2"
  sha256 "f2c314cad004d088d6effa2f5929aeded7bfe870d48beab1e7c5b6fdeb4d7e7d"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
