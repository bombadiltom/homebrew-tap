cask "tidygrid" do
  version "1.2"
  sha256 "1bfe6fe36acb9345bb12c57d4abd0a3bb88a90f77b7b71bec3c7347732df50a8"

  url "https://github.com/bombadiltom/tidygrid/releases/download/v#{version}/TidyGrid-#{version}.zip"
  name "TidyGrid"
  desc "Drag a window onto a pop-up layout icon to snap it into place"
  homepage "https://github.com/bombadiltom/tidygrid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TidyGrid.app"

  uninstall quit: "de.idiotentruppe.tidygrid"

  zap trash: [
    "~/Library/Logs/TidyGrid-selftest.log",
    "~/Library/Preferences/app.tidygrid.TidyGrid.plist",
    "~/Library/Preferences/de.idiotentruppe.tidygrid.plist",
  ]
end
