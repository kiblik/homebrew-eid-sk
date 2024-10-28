cask "eid-sk" do
  version "4.9"
  sha256 "975044b1b5f2491678b8a556402df63def75b267216e1891559fcece16be5a78"

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
