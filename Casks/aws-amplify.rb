cask "aws-amplify" do
  version "12.8.2"
  sha256 "f83d97ec4869cfb93974c5fd65b58fc30f191525c0d70abfe983ae32020ffc63"

  url "https://github.com/aws-amplify/amplify-cli/releases/download/v#{version}/amplify-pkg-macos.tgz"
  name "AWS Amplify Command Line Interface"
  desc "Build full-stack web and mobile apps in hours. Easy to start, easy to scale"
  homepage "https://aws.amazon.com/amplify"

  conflicts_with formula: "aws-amplify"

  binary "amplify-pkg-macos", target: "amplify"
end
