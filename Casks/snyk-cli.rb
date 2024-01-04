cask "snyk-cli" do
  version "1.1267.0"
  sha256 "4735108ad720dd71ade4ec55bbbda1df799c43095b4d5b691da18903c82fe1f0"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://snyk.io/"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
