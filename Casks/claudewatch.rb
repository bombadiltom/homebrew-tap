cask "claudewatch" do
  version "1.1"
  sha256 "067905162a48b0ffec7ab303c42dc3db76a0ccb445a653202d6f70662e9ae122"

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
