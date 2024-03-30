cask "snyk-cli" do
  version "1.1286.2"
  sha256 "1bc40afe86e0e43feafe1ccfe2a7bf3dd3ec73a5adc7b0d98590be9610a5bf9c"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
