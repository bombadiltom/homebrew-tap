cask "bluetoothbatterywatch" do
  version "1.0"
  sha256 "218f744b4911576218fec8e985f4c583a7e15f50d1aca2c6083bfc77cb87a363"

  url "https://github.com/bombadiltom/BluetoothBatteryWatch/releases/download/v#{version}/BluetoothBatteryWatch-#{version}.zip"
  name "BluetoothBatteryWatch"
  desc "Menu bar battery levels and low-battery alerts for Bluetooth accessories"
  homepage "https://github.com/bombadiltom/BluetoothBatteryWatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "BluetoothBatteryWatch.app"

  uninstall quit: "de.lorenz-unna.batterywatch"

  zap trash: "~/Library/Preferences/de.lorenz-unna.batterywatch.plist"
end
