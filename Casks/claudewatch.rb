cask "claudewatch" do
  version "1.3"
  sha256 "be69a2fd8f8b8038f745bac1240e2f79c381e29701bedf02b3c0414d99233652"

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

  uninstall quit: "de.lorenz-unna.claudewatch"

  zap trash: [
    "~/Library/Caches/de.lorenz-unna.claudewatch",
    "~/Library/Preferences/de.lorenz-unna.claudewatch.plist",
  ]
end
