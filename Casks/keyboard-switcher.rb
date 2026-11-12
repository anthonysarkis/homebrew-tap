cask "keyboard-switcher" do
  version "1.0.3"
  sha256 "bf46074530221db668e16fecde2693c34da161b80277fc414b5fc567004d3986"

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
