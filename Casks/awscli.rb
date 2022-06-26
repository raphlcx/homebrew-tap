cask "awscli" do
  version "2.7.11"
  sha256 "2026d66b4700971375a4b26d17c4f9302d9f1aee6f7d1b86e9bf49891dc97493"

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
