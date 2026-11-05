cask "dropconvert" do
  version "1.3.2"
  sha256 "832875cca37ed164d5d17f04be297a7de4bc7ce4a070330b949355dbef9ccc32"

  url "https://github.com/BobClawblaw/dropconvert/releases/download/v#{version}/DropConvert-#{version}.dmg"
  name "DropConvert"
  desc "Menu-bar video, audio, and image converter with link downloads"
  homepage "https://github.com/BobClawblaw/dropconvert"

  depends_on macos: :sonoma
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"

  app "DropConvert.app"

  uninstall quit: "com.bobclawblaw.dropconvert"

  zap trash: [
    "~/Library/Application Support/DropConvert",
    "~/Library/Preferences/com.bobclawblaw.dropconvert.plist",
  ]
end
