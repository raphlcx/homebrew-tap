cask "sass" do
  version "1.83.4"
  sha256 "939b87fb19a36aebfb9325a5e7ad8b99b8dedd3762c6a6983744752da4f45656"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
