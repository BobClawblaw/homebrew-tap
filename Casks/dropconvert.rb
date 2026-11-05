cask "dropconvert" do
  version "1.3.1"
  sha256 "99f1540f0386194dad06cede8ab83219e69aefa30b044a5b8956a8ab76ba155f"

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
