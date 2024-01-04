cask "sass" do
  version "1.69.7"
  sha256 "ffc161c6b6dbb9582a9e5cc6672a5308c859db8d614573afa99529dcb67852e5"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
