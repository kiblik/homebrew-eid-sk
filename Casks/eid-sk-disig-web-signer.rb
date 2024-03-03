cask "eid-sk-disig-web-signer" do
  version "2.2.0-1"
  sha256 "9675c16c8b1de55fe1cacfea98ce6481b415294402cfeeadfba4b5143cf460ef"

  url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer_#{version}.dmg",
      verified: "download.disigcdn.sk/cdn/products/websigner2/"
  name "Aplikacia pre ZEP a KEP"
  desc "Application for Qualified Electronic Signature"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  livecheck do
    url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer.dmg"
    regex(/Disig_Web_Signer_(\d+(?:[.-]\d+)+).dmg/i)
  end

  pkg "Disig_Web_Signer.pkg"

  uninstall pkgutil: "sk.disig.WebSignerTray"
end
