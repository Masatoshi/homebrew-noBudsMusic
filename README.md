# homebrew-noBudsMusic

Homebrew tap for `noBudsMusic`.

Install:

```bash
brew tap masatoshi/noBudsMusic
brew install --cask no-buds-music
```

## Update flow

1. Build and notarize a release artifact in `noBudsMusic`.
2. Create a GitHub Release and upload:

   - `noBudsMusic-<version>.zip`

3. Update `Casks/no-buds-music.rb` for:
   - `version`
   - `sha256` (replace `:no_check`)

## File layout

- `Casks/no-buds-music.rb`: cask definition
