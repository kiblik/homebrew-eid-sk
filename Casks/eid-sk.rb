cask "eid-sk" do
  version "5.3"
  sha256 "1c9cdb4e7c819844e310a5aba46be95479ee9a98e3868808b65728f7f087bbb7"

  url "https://eidas.minv.sk/downloadservice/eidklient/mac/eID_klient.dmg#v=#{version}",
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

  auto_updates true

  app "eID_klient.app"

  uninstall quit:   "sk.minv.eID_klient",
            signal: [
              ["KILL", "sk.minv.eID_klient"],
            ]
end
