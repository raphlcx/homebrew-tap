cask "sass" do
  version "1.72.0"
  sha256 "f52d03a7230e081f1b638b3182c8344bb931aad7d00e682355eacdd88fd79f6b"

  url "https://github.com/sass/dart-sass/releases/download/#{version}/dart-sass-#{version}-macos-arm64.tar.gz"
  name "Sass"
  desc "Stylesheet Preprocessor"
  homepage "https://sass-lang.com/"

  binary "dart-sass/sass"
end
