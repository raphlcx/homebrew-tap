cask "aws-sam-cli" do
  version "1.72.0"
  sha256 "2d57c01e1ad6a7cd7003a1e79956f564f7c8ca256925c1162b46fdb59e90dac6"

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
