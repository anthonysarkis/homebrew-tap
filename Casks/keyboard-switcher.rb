cask "keyboard-switcher" do
  version "1.0.1"
  sha256 "822685f50ecf57a42032aa748d7792273985c8f417cfe0ae0fd1b26b4c95b908"

  url "https://github.com/anthonysarkis/keyboard-switcher/releases/download/v#{version}/Keyboard-Switcher.zip"
  name "Keyboard Switcher"
  desc "Menu bar app that picks the keyboard for each app and website"
  homepage "https://github.com/anthonysarkis/keyboard-switcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Keyboard Switcher.app"

  uninstall quit: "com.anthonysarkis.keyboard-switcher"

  zap trash: [
    "~/Library/Application Support/com.anthonysarkis.keyboard-switcher",
    "~/Library/Preferences/com.anthonysarkis.keyboard-switcher.plist",
  ]
end
