# homebrew-momentum-menu

A Homebrew tap for [Momentum Menu](https://github.com/andr3-santos/momentum-menu),
a macOS menu bar app for Sennheiser MOMENTUM 4 headphones.

```sh
brew install --cask --no-quarantine andr3-santos/momentum-menu/momentum-menu
```

`--no-quarantine` is needed because the app is ad-hoc signed rather than
notarised. Without it macOS refuses to open the downloaded app, and you would
have to clear quarantine by hand afterwards.

Not affiliated with Sennheiser or Sonova.
