cask "claudewatch" do
  version "1.10"
  sha256 "3ba5bf18c730b23243f5e3f75343147273f86595039469f42d313ccc44109854"

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
