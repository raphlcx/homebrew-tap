cask "snyk-cli" do
  version "1.1293.0"
  sha256 "c3ff853e7d56f4a52fa287071feab476902c5efd3c095c6954aa683e2b005f1e"

  url "https://static.snyk.io/cli/v#{version}/snyk-macos-arm64"
  name "Snyk Command Line Interface"
  desc "Scans and monitors projects for security vulnerabilities"
  homepage "https://github.com/snyk/cli"

  conflicts_with formula: "snyk-cli"

  binary "snyk-macos-arm64", target: "snyk"
end
