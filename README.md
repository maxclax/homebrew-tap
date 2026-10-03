# maxclax/tap

Homebrew casks for apps by [maxclax](https://maxclax.com).

```sh
brew install --cask maxclax/tap/sunclax
brew install --cask maxclax/tap/tempo
```

- **Sunclax** — a keystroke counter and typing trainer that never records what you type.
  [maxclax.com/sunclax](https://maxclax.com/sunclax/)
- **Triada Tempo** — three outcomes for every day, week, month and year, kept in plain-text
  Markdown or Org files. [maxclax.com/tempo](https://maxclax.com/tempo/)

Both need macOS 26 or newer on Apple silicon.

Both apps update themselves; `brew upgrade` is not needed.

`brew uninstall --zap --cask <app>` also removes the app's settings and caches — never your data:
Sunclax's typing history and Tempo's vault stay in the folders you chose.
