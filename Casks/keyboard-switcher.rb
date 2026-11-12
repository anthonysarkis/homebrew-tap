cask "keyboard-switcher" do
  version "1.0.4"
  sha256 "ea1352ee22df4efbbbc8efe466fe75e835506e65df71db74f3aed7ce69c612cc"

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
