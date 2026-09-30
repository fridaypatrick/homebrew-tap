cask "ambientsync" do
  arch arm: "arm64"

  version "0.3.0"
  sha256 "3cda72cf34784756399d6e6a0829cad1512bddf7dd11720d66552e521f22ba77"

  url "https://github.com/fridaypatrick/ambient-sync/releases/download/v0.3.0/AmbientSync-0.3.0-arm64.dmg"
  name "AmbientSync"
  desc "Synchronizes ambient display brightness and appearance"
  homepage "https://github.com/fridaypatrick/ambient-sync"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "AmbientSync.app"

  # CFBundleIdentifier: cloud.piatkowski.AmbientSync
  caveats <<~EOS
    AmbientSync requires macOS 26 or newer on Apple silicon.

    AmbientSync may request Automation access to System Events for appearance synchronization.
  EOS
end
