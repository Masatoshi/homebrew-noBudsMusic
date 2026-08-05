# typed: false
# frozen_string_literal: true

cask "no-buds-music" do
  version "0.1.0"

  # Use no_check until a stable release asset is signed/notarized and its hash is
  # recorded in this file. For production, prefer pinned SHA-256.
  sha256 :no_check

  url "https://github.com/Masatoshi/noBudsMusic/releases/download/v#{version}/noBudsMusic-#{version}.zip"
  name "noBudsMusic"
  desc "Prevent Music.app from launching on Bluetooth media key taps"
  homepage "https://github.com/Masatoshi/noBudsMusic"

  livecheck do
    url "https://github.com/Masatoshi/noBudsMusic/releases/latest"
    strategy :github_latest
  end

  app "NoBudsMusic.app"

  uninstall quit: "jp.kaizudenki.noBudsMusic"

  zap trash: [
    "~/Library/Preferences/jp.kaizudenki.noBudsMusic.plist",
    "~/Library/Containers/jp.kaizudenki.noBudsMusic",
    "~/Library/Application Support/jp.kaizudenki.noBudsMusic",
  ]
end
