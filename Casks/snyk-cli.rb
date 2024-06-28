cask "snyk-cli" do
  version "1.1292.1"
  sha256 "699f75ff0a64913ec84f27755541e7e6f43a4d8f26b1269a2749cf8a78519bf6"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
