# Homebrew Tap

Add tap:

```
brew tap raphlcx/tap
```

Available formulae:

- mpv-light
- vim-minimal

Available casks:

- AWS CLI
- AWS Amplify CLI
- AWS SAM CLI
- CrossOver (v21.1)
- Dart Sass
- Snyk CLI

## Maintenance note

1. Update the version in respective formula or cask.
1. Run `brew fetch <path_to_file>`.
1. Note and copy the checksum (not the one with warning).
1. On the respective formula or cask, use the copied checksum from the previous step.

Or:

1. Update the version in all formulae and casks.
1. Execute `./update-checksum`.
