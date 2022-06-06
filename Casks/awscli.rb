cask "awscli" do
  version "2.7.6"
  sha256 "1089c293841606ca71f0221165bbff22530059d227704989b7210640580275f4"

  url "https://awscli.amazonaws.com/AWSCLIV2-#{version}.pkg"
  name "AWS Command Line Interface"
  desc "Interact with AWS services using commands in your command-line shell"
  homepage "https://awscli.amazonaws.com/v2/documentation/api/latest/index.html"

  pkg "AWSCLIV2-#{version}.pkg"

  uninstall pkgutil: "com.amazon.aws.cli2",
            delete:  "/usr/local/aws-cli"

  caveats do
    files_in_usr_local
  end
end
