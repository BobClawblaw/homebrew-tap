cask "dropconvert" do
  version "1.3.0"
  sha256 "7e857f42fe9c267f629aa94408559c31849dc541db6e947e9085b8261f10bb61"

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
