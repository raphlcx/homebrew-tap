cask "snyk-cli" do
  version "1.1280.1"
  sha256 "975edd717902cdf05a925a20969c8ed4c7a9900a8f6e8e7c9911d9905b1115f7"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
