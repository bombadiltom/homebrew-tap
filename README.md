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
```

Homebrew 7 only loads casks from third-party taps once you trust them, which is what the `brew trust` line does.

| Cask | App |
|---|---|
| `bluetoothbatterywatch` | [BluetoothBatteryWatch](https://github.com/bombadiltom/BluetoothBatteryWatch): menu bar battery levels and low-battery alerts for Bluetooth accessories |
| `tidygrid` | [TidyGrid](https://github.com/bombadiltom/tidygrid): drag a window onto a pop-up layout icon to snap it into place |
| `claudewatch` | [ClaudeWatch](https://github.com/bombadiltom/ClaudeWatch): menu bar Claude plan limits, token usage and Claude Code costs |
