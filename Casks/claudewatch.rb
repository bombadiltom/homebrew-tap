cask "claudewatch" do
  version "1.7"
  sha256 "8d94c054ec0271d6c42174e15a493ec9057f3c57ece3c1fa96127fc1046f025c"

  url "https://github.com/bombadiltom/ClaudeWatch/releases/download/v#{version}/ClaudeWatch-#{version}.zip"
  name "ClaudeWatch"
  desc "Menu bar Claude plan limits, token usage and Claude Code costs"
  homepage "https://github.com/bombadiltom/ClaudeWatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClaudeWatch.app"

  uninstall quit: ["de.idiotentruppe.claudewatch", "de.lorenz-unna.claudewatch"]

  zap trash: [
    "~/Library/Caches/de.idiotentruppe.claudewatch",
    "~/Library/Caches/de.lorenz-unna.claudewatch",
    "~/Library/Preferences/de.idiotentruppe.claudewatch.plist",
    "~/Library/Preferences/de.lorenz-unna.claudewatch.plist",
  ]
end
