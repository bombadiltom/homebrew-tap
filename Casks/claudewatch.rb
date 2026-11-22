cask "claudewatch" do
  version "1.9"
  sha256 "abd79591518ac4d2cc1957ba7f1bb53c71b0043cbe5022eff508c09f2f1e1b74"

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
