cask "sass" do
  version "1.77.1"
  sha256 "898db3edb81f9361c20d4c3d1a41886607a72430c34a7feeebba6832e810a7a3"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
