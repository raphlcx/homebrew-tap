cask "snyk-cli" do
  version "1.1294.0"
  sha256 "491e1de03e58a3ce27d026c214feb00cb4340c338ca310f631d789016986024e"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://github.com/snyk/cli"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
