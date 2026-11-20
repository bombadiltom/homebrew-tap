cask "tidygrid" do
  version "1.0"
  sha256 "5182cb8dc0daa05f0b602a3591278f688c54bb909affee9beb1604b10355dcc4"

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
