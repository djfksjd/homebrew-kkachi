cask "kkachi" do
  version "0.1.0-beta.1"
  sha256 "16e2165339c6b15ff10debb80012f776c10d425287003252c88e2ab670c11902"

  url "https://github.com/djfksjd/kkachi-releases/releases/download/v#{version}/KKACHI-#{version}-macos-arm64.dmg"
  name "KKACHI"
  desc "Local-first Korean document workspace (beta)"
  homepage "https://github.com/djfksjd/kkachi-releases"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "KKACHI.app"

  caveats <<~EOS
    This beta has no Apple Developer ID signature or notarization.
    On first launch, macOS may require approval in System Settings > Privacy & Security.
    Automatic updates and public AI execution are unavailable in this beta.
    Installation guide: https://github.com/djfksjd/kkachi-releases/blob/main/docs/INSTALLATION.md
  EOS
end
