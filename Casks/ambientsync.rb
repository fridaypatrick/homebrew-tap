cask "ambientsync" do
  arch arm: "arm64"

  version "0.4.0"
  sha256 "568cc84f69feb703c0963fd35dcce53f16576b20bb21f346574c2c1039d888f6"

  url "https://github.com/fridaypatrick/ambient-sync/releases/download/v0.4.0/AmbientSync-0.4.0-arm64.dmg"
  name "AmbientSync"
  desc "Synchronizes ambient display brightness and appearance"
  homepage "https://github.com/fridaypatrick/ambient-sync"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  # CFBundleIdentifier: cloud.piatkowski.AmbientSync
  app "AmbientSync.app"

  caveats <<~EOS
    AmbientSync requires macOS 26 or newer on Apple silicon.
    AmbientSync may request Automation access to System Events for appearance synchronization.
  EOS
end
