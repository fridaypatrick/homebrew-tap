cask "ambientsync" do
  version "0.2.0"
  sha256 "0dc03075ab660cd6153d4ad507122a444cda104f316e48aec1c4db1689d213e1"

  url "https://github.com/fridaypatrick/ambient-sync/releases/download/v0.2.0/AmbientSync-0.2.0-arm64.dmg"
  name "AmbientSync"
  desc "Synchronizes ambient display brightness and appearance"
  homepage "https://github.com/fridaypatrick/ambient-sync"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  arch arm: "arm64"

  app "AmbientSync.app"

  # CFBundleIdentifier: cloud.piatkowski.AmbientSync
  caveats <<~EOS
    AmbientSync requires macOS 26 or newer on Apple silicon.

    AmbientSync may request Automation access to System Events for appearance synchronization.
  EOS
end
