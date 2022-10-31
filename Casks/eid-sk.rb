cask 'eid-sk' do
    version '4.1'
    sha256 '3206e00c6de5c0cc10b35ecc10d565861ee08ece8347460e593cb9882dbd22bd'

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