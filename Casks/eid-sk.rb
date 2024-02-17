cask "eid-sk" do
  version "4.8"
  sha256 "31d2bd27822769b03f023a9dd2586bff79282e1e5aaf180bc9e0d1626520f4f4"

  url "
  {version}",
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
