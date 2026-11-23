cask "albumwantlist" do
  version "1.1"
  sha256 "5d9ba7277a8a51a8b75c04ca5169dc92b269ef6e2e0f4ebecfeedc655761c0e2"

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
