cask "ryujinx" do
  version "1.1.819"
  sha256 "890e0e688cb25a15cd0c2a534c97f1572629f5309c0c411c4372d7f808df22d0"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://www.ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
