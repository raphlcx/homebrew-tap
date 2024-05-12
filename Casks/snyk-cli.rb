cask "snyk-cli" do
  version "1.1291.0"
  sha256 "c966c13ac59398014636f9c3cc81f3863398b79ea1c01840932d35cd36655c7e"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
