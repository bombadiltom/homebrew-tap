cask "albumwantlist" do
  version "1.0"
  sha256 "5b8d7de6adb2eb3b28693fc40436204ebd57eb2953fa3c3edc4ddddad3c4559b"

  url "https://github.com/bombadiltom/albumwantlist-releases/releases/download/v#{version}/AlbumWantList-#{version}.zip"
  name "AlbumWantList"
  desc "Discogs wantlist offers, multi-item sellers and shop price comparison"
  homepage "https://www.idiotentruppe.de/apps/albumwantlist/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AlbumWantList.app"

  uninstall quit: "de.idiotentruppe.albumwantlist"

  zap trash: "~/Library/Containers/de.idiotentruppe.albumwantlist"
end
