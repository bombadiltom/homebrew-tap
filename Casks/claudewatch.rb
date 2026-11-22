cask "claudewatch" do
  version "1.8"
  sha256 "11faed5b6e01820be2056af95c07d7879e8e66e14d16e9d346713f87e4e20f93"

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
