cask "aws-sam-cli" do
  version "1.113.0"
  sha256 "26676651977458486e0588243c8948c09eefe13ddb03f0d0cf4678c615c1d7c0"

  url "https://github.com/aws/aws-sam-cli/releases/download/v#{version}/aws-sam-cli-macos-arm64.pkg"
  name "AWS Serverless Application Model (AWS SAM) Command Line Interface"
  desc "Local development and testing of Serverless applications"
  homepage "https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html"

  pkg "aws-sam-cli-macos-arm64.pkg"

  uninstall pkgutil: "com.amazon.aws.sam.cli",
            delete:  ["/usr/local/aws-sam-cli", "/usr/local/bin/sam"]

  caveats do
    files_in_usr_local
  end
end
