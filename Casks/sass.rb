cask "sass" do
  version "1.78.0"
  sha256 "8a7f718bc3ddf72c6c271a34c343b1ea9e39d8414ed6f0487df6e05e54e9e4a8"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
