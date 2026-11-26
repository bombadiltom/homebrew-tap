cask "claudewatch" do
  version "1.11"
  sha256 "1e73592a3f94bb4742a9a58b5ea22d4a355710f248a6d478d98e580e92dd0896"

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
