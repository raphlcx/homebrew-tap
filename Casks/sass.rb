cask "sass" do
  version "1.92.1"
  sha256 "cddf1f64e2809f3c3d3ef4a7822130494c38e327994954364f8765dfc16c9177"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
