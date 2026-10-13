cask "momentum-menu" do
  version "1.0.2"
  sha256 "0b1a01d9cbd88f78c9111d4b077b594cb777f62430ac92c1016d9a6b410a06c7"

  url "https://github.com/andr3-santos/momentum-menu/releases/download/v#{version}/MomentumMenu-#{version}.zip"
  name "Momentum Menu"
  desc "Menu bar control for Sennheiser MOMENTUM 4 headphones"
  homepage "https://github.com/andr3-santos/momentum-menu"

  depends_on macos: :sonoma

  app "MomentumMenu.app"

  caveats <<~EOS
    Momentum Menu is ad-hoc signed rather than notarised with a paid Apple
    Developer account, so macOS quarantines it on download. If you installed
    without --no-quarantine, clear it with:

      xattr -dr com.apple.quarantine /Applications/MomentumMenu.app

    macOS will ask for Bluetooth permission on first launch. The equaliser and
    bass boost need headphone firmware 3.x.
  EOS

  zap trash: [
    "~/Library/Preferences/local.momentummenu.plist",
  ]
end
