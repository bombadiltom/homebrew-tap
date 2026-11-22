cask "albumtodolist" do
  version "1.2.0"
  sha256 "d0a0efe7ace208d8dd92a44b8efa0add378bf6e4f475d54fa8d7e34a9bbbadf8"

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
