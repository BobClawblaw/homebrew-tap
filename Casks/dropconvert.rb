cask "dropconvert" do
  version "1.3.0"
  sha256 "1e118b3c7b0a5b49f653e83fee39ca96885fdae4b6f8a27630da535f280ea3f4"

  url "https://github.com/BobClawblaw/dropconvert/releases/download/v#{version}/DropConvert-#{version}.dmg"
  name "DropConvert"
  desc "Menu-bar video, audio, and image converter with link downloads"
  homepage "https://github.com/BobClawblaw/dropconvert"

  depends_on macos: ">= :sonoma"
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"

  app "DropConvert.app"

  uninstall quit: "com.bobclawblaw.dropconvert"

  zap trash: [
    "~/Library/Application Support/DropConvert",
    "~/Library/Preferences/com.bobclawblaw.dropconvert.plist",
  ]
end
