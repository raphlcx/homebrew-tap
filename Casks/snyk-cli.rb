cask "snyk-cli" do
  version "1.1260.0"
  sha256 "e2eb42db77667322c907cd9cf53a137cd518abb1aa7a92001405d102ce716634"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
