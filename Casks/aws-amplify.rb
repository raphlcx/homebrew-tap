cask "aws-amplify" do
  version "12.10.0"
  sha256 "4b3c1f1c0e4de2a1940dbd11cdb34f137a85d85f70e6b004550f966553e9eebf"

  url "https://github.com/aws-amplify/amplify-cli/releases/download/v#{version}/amplify-pkg-macos.tgz"
  name "AWS Amplify Command Line Interface"
  desc "Build full-stack web and mobile apps in hours. Easy to start, easy to scale"
  homepage "https://aws.amazon.com/amplify"

  conflicts_with formula: "aws-amplify"

  binary "amplify-pkg-macos", target: "amplify"
end
