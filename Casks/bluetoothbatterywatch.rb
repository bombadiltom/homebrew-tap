cask "bluetoothbatterywatch" do
  version "1.1"
  sha256 "814d185d2decb8f193c49438b33ac9577fd8eacc350819cfec56b88c9f08761c"

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
