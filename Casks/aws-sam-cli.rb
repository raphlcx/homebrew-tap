cask "aws-sam-cli" do
  version "1.106.0"
  sha256 "a35b96805421607b2fcbbd76f4beba1713804994770e140f8e4582f4ed154af4"

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
