cask "aws-amplify" do
  version "12.10.1"
  sha256 "9c1a8b6c34d71e7a591913450126be3f156a662e2addcaa6183b5d5ce96e0157"

  url "https://github.com/aws-amplify/amplify-cli/releases/download/v#{version}/amplify-pkg-macos.tgz"
  name "AWS Amplify Command Line Interface"
  desc "Build full-stack web and mobile apps in hours. Easy to start, easy to scale"
  homepage "https://aws.amazon.com/amplify"

  conflicts_with formula: "aws-amplify"

  binary "amplify-pkg-macos", target: "amplify"
end
