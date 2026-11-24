cask "bluetoothbatterywatch" do
  version "1.2"
  sha256 "5953187dd8988ab85ffc50fc722dd4531cae1a432ba592b65839117a2db4003e"

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

  uninstall quit: "de.idiotentruppe.batterywatch"

  zap trash: [
    "~/Library/Preferences/de.idiotentruppe.batterywatch.plist",
    "~/Library/Preferences/de.lorenz-unna.batterywatch.plist",
  ]
end
