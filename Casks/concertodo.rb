cask "concertodo" do
  version "1.2"
  sha256 "f13494f32b32bd8db9304fc8023ec31e15401d733d96e5eafd5cacc5b19858af"

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
