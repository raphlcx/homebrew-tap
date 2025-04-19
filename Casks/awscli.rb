cask "awscli" do
  version "2.26.0"
  sha256 "62dd21f870637aa0c88de1147eb16dd5e80715b064a9cebc172091024903f883"

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
