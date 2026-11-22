# bombadiltom/homebrew-tap

Homebrew casks for my apps.

```bash
brew tap bombadiltom/tap
brew trust --cask bombadiltom/tap/bluetoothbatterywatch
brew install --cask bombadiltom/tap/bluetoothbatterywatch

brew trust --cask bombadiltom/tap/tidygrid
brew install --cask bombadiltom/tap/tidygrid

brew trust --cask bombadiltom/tap/claudewatch
brew install --cask bombadiltom/tap/claudewatch

brew trust --cask bombadiltom/tap/albumwantlist
brew install --cask bombadiltom/tap/albumwantlist
```

Homebrew 7 only loads casks from third-party taps once you trust them, which is what the `brew trust` line does.

| Cask | App |
|---|---|
| `bluetoothbatterywatch` | [BluetoothBatteryWatch](https://github.com/bombadiltom/BluetoothBatteryWatch): menu bar battery levels and low-battery alerts for Bluetooth accessories |
| `tidygrid` | [TidyGrid](https://github.com/bombadiltom/tidygrid): drag a window onto a pop-up layout icon to snap it into place |
| `claudewatch` | [ClaudeWatch](https://github.com/bombadiltom/ClaudeWatch): menu bar Claude plan limits, token usage and Claude Code costs |
| `albumwantlist` | [AlbumWantList](https://www.idiotentruppe.de/apps/albumwantlist/): Discogs marketplace offers for your wantlist, sellers with several of your records, and shop price comparison |
