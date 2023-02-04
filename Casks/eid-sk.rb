cask "eid-sk" do
  version "4.5"
  sha256 "fe37fc8317f1a8b5b8b10e368b6b372f545a6959210ed1ff0d552f8129937f2e"

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
