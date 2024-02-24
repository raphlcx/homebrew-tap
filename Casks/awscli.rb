cask "awscli" do
  version "2.15.22"
  sha256 "702b6ec630abd2a5368bfda6d17aa2dea78326371106d6a03e73aa528edb5a4c"

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
