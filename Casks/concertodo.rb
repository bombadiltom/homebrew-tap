cask "concertodo" do
  version "1.3"
  sha256 "93d40dcba7fd9dcd61c0ed7cc4986f3a1d83210bde0a705bbf3b4c89e863d088"

  url "https://github.com/bombadiltom/concertodo-releases/releases/download/v#{version}/ConcerTodo-#{version}.zip"
  name "ConcerTodo"
  desc "Find concerts in your cities and track the ones you want to see"
  homepage "https://www.idiotentruppe.de/apps/concertodo/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ConcerTodo.app"

  uninstall quit: "de.idiotentruppe.concertodo"

  # Sandboxed, so its data lives in the container, which the Mac App Store
  # version of the same app shares.
  zap trash: [
    "~/Library/Application Scripts/de.idiotentruppe.concertodo",
    "~/Library/Containers/de.idiotentruppe.concertodo",
  ]
end
