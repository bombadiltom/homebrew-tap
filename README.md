# bombadiltom/homebrew-tap

Homebrew casks for my apps.

```bash
brew tap bombadiltom/tap
brew trust --cask bombadiltom/tap/bluetoothbatterywatch
brew install --cask bombadiltom/tap/bluetoothbatterywatch
```

Homebrew 7 only loads casks from third-party taps once you trust them, which is what the `brew trust` line does.

| Cask | App |
|---|---|
| `bluetoothbatterywatch` | [BluetoothBatteryWatch](https://github.com/bombadiltom/BluetoothBatteryWatch): menu bar battery levels and low-battery alerts for Bluetooth accessories |
