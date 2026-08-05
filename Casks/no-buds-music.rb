# typed: false
# frozen_string_literal: true

cask "no-buds-music" do
  version "0.1.0"

  # Pinned SHA-256 for noBudsMusic-#{version}.zip.
  sha256 "5a17631290df270ea0166ee9fdc8d967b4919b9fac3a1b846609adbd0681f608"

  url "https://github.com/Masatoshi/noBudsMusic/releases/download/v#{version}/noBudsMusic-#{version}.zip"
  name "noBudsMusic"
  desc "Prevent Music.app from launching on Bluetooth media key taps"
  homepage "https://github.com/Masatoshi/noBudsMusic"

  livecheck do
    url "https://github.com/Masatoshi/noBudsMusic/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NoBudsMusic.app"

  uninstall quit: "jp.kaizudenki.noBudsMusic"

  zap trash: [
    "~/Library/Preferences/jp.kaizudenki.noBudsMusic.plist",
    "~/Library/Containers/jp.kaizudenki.noBudsMusic",
    "~/Library/Application Support/jp.kaizudenki.noBudsMusic",
  ]
end
