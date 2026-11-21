cask "claudewatch" do
  version "1.4"
  sha256 "e0f19a5822cfe7fe9b46f088e3e76ade36144bc09680dbf3c8cdeec7915f8c43"

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
