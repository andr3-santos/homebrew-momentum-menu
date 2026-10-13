cask "momentum-menu" do
  version "1.0.1"
  sha256 "8c20f233f199567df023840bc84b46e89715a2b54220bc436f7f70eb28729737"

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
