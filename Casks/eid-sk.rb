cask 'eid-sk' do
    version '4.3'
    sha256 '776341f1d929218636574ff9bc7f133552981e85c0a20772f1a486e40e96c461'

    # eidas.minv.sk/TCTokenService/download was verified as official when first introduced to the cask
    url 'https://eidas.minv.sk/downloadservice/eidklient/mac/eID_klient.dmg'
    name 'Aplikacia pre eID'
    name 'eID Klient'
    name 'Electronic identity card software for Slovakia'
    name 'eID Slovakia'
    homepage 'https://www.slovensko.sk/sk/titulna-stranka'

    livecheck do
        url "https://eidas.minv.sk/download"
        regex(/eID klient (\d+(?:\.\d+)+) pre macOS/i)
    end

    app 'eID_klient.app'
end
