cask "tidygrid" do
  version "1.1"
  sha256 "4ddebf6d1cefacf0c145b4773ddf3a8ec3fe38a5fbcf9731259f947d6d95dd2c"

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

  uninstall quit: "app.tidygrid.TidyGrid"

  zap trash: [
    "~/Library/Logs/TidyGrid-selftest.log",
    "~/Library/Preferences/app.tidygrid.TidyGrid.plist",
  ]
end
