cask "albumtodolist" do
  version "1.2.1"
  sha256 "4743c6e90578db5748c8f685133913c9e32303bc3e4449e831188aac25d3e99c"

  url "https://github.com/bombadiltom/albumtodolist-releases/releases/download/v#{version}/AlbumTodoList-#{version}.zip"
  name "AlbumTodoList"
  desc "Track new album releases and queue them in Apple Music"
  homepage "https://www.idiotentruppe.de/apps/albumtodolist/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AlbumTodoList.app"

  uninstall quit: "de.idiotentruppe.albumtodolist"

  zap trash: [
    "~/Library/Application Support/de.idiotentruppe.albumtodolist",
    "~/Library/Caches/de.idiotentruppe.albumtodolist",
    "~/Library/Preferences/de.idiotentruppe.albumtodolist.plist",
  ]
end
