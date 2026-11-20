cask "bluetoothbatterywatch" do
  version "1.1.1"
  sha256 "15462455d00e7a423b7c511c99d6cee3ec4477ef36a58c7202b413650cca9e83"

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
