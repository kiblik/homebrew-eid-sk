cask "eid-sk" do
  version "4.3"
  sha256 :no_check

  # eidas.minv.sk/TCTokenService/download was verified as official when first introduced to the cask
  url "https://eidas.minv.sk/downloadservice/eidklient/mac/eID_klient.dmg",
      verified: "eidas.minv.sk/downloadservice/eidklient/mac/"
  name "Aplikacia pre eID"
  name "eID Klient"
  name "Electronic identity card software for Slovakia"
  name "eID Slovakia"
  desc "Application for log in by Slovak eID"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  livecheck do
    url "https://eidas.minv.sk/download"
    regex(/eID klient (\d+(?:\.\d+)+) pre macOS/i)
  end

  app "eID_klient.app"
end
