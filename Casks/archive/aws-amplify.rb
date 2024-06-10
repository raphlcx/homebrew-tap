cask "aws-amplify" do
  version "12.10.3"
  sha256 "0775b77c02d9503a042d712210211ab1e5fefbcfce7b8be08bbd13e239d9cb64"

  url "https://github.com/aws-amplify/amplify-cli/releases/download/v#{version}/amplify-pkg-macos.tgz"
  name "AWS Amplify Command Line Interface"
  desc "Build full-stack web and mobile apps in hours. Easy to start, easy to scale"
  homepage "https://aws.amazon.com/amplify"

  conflicts_with formula: "aws-amplify"

  binary "amplify-pkg-macos", target: "amplify"
end
