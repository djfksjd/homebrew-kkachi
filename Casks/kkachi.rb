cask "kkachi" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-beta.1"
  sha256 arm:   "16e2165339c6b15ff10debb80012f776c10d425287003252c88e2ab670c11902",
         intel: "21e08b618f65e68b958ebd53d4a895aa365c38bf9cfb4f5a7f01f0147de4e63e"

  url "https://github.com/djfksjd/kkachi-releases/releases/download/v#{version}/KKACHI-#{version}-macos-#{arch}.dmg"
  name "KKACHI"
  desc "Local-first Korean document workspace (beta)"
  homepage "https://github.com/djfksjd/kkachi-releases"

  depends_on macos: :monterey

  app "KKACHI.app"

  caveats <<~EOS
    This beta has no Apple Developer ID signature or notarization.
    On first launch, macOS may require approval in System Settings > Privacy & Security.
    Automatic updates, KKACHI-managed AI, and API-key AI execution are unavailable.
    Connected Claude, Codex (ChatGPT), and Gemini subscription routes are separate.
    Installation guide: https://github.com/djfksjd/kkachi-releases/blob/main/docs/INSTALLATION.md
  EOS
end
