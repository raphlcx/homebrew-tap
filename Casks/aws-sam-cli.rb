cask "aws-sam-cli" do
  version "1.67.0"
  sha256 "95a3731ebf691b3552323e31636d69851fe1b6230cd86f004a53c04f383c984b"

  url "https://github.com/aws/aws-sam-cli/releases/download/v#{version}/aws-sam-cli-macos-arm64.pkg"
  name "AWS Serverless Application Model (AWS SAM) Command Line Interface"
  desc "Local development and testing of Serverless applications"
  homepage "https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html"

  pkg "aws-sam-cli-macos-arm64.pkg"

  uninstall pkgutil: "com.amazon.aws.sam.cli",
            delete:  "/usr/local/aws-sam-cli"

  caveats do
    files_in_usr_local
  end
end
