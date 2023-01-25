cask "eid-sk-d-launcher1" do
  version "1.0"
  sha256 :no_check

  # eidas.minv.sk/TCTokenService/download was verified as official when first introduced to the cask
  url "https://www.slovensko.sk/static/zep/apps/DLauncher.mac.dmg"
  name "Aplikacia pre ZEP a KEP"
  desc "Application for Qualified Electronic Signature"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  app "D.Launcher"
end
