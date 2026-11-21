cask "claudewatch" do
  version "1.0"
  sha256 "783143cd0b2850c3242f87bffe9a33455f7ef6b86df2018d4ad1e985cf4fae46"

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
