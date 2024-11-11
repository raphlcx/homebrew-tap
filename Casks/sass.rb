cask "sass" do
  version "1.80.6"
  sha256 "51f5d170ad27ac9635ba94984974a5b8a509548f1bb8b595c8563cc6141228ba"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
