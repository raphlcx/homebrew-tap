cask "awscli" do
  version "2.13.38"
  sha256 "f07e6edee4f8f60487d2bdd057edd22457b7b2d7ff185af7f69eeaa5799a05df"

  url "https://awscli.amazonaws.com/AWSCLIV2-#{version}.pkg"
  name "AWS Command Line Interface"
  desc "Interact with AWS services using commands in your command-line shell"
  homepage "https://awscli.amazonaws.com/v2/documentation/api/latest/index.html"

  conflicts_with formula: "awscli"

  pkg "AWSCLIV2-#{version}.pkg"

  uninstall pkgutil: "com.amazon.aws.cli2",
            delete:  "/usr/local/aws-cli"

  caveats do
    files_in_usr_local
  end
end
