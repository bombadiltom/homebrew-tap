cask "claudewatch" do
  version "1.6"
  sha256 "7253f8756e2c57977677c95883e82401c76b292badd22ed33052257504430835"

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
