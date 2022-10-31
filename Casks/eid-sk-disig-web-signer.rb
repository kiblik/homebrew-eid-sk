cask 'eid-sk-disig-web-signer' do
    version "2.0.7-1"
    sha256 "da4229962fbf0c17c216516041e29991576ebd5d6f2d280d1e6bc01462bf727d"

    url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer_#{version}.dmg"
    name 'Aplikacia pre ZEP a KEP'
    homepage 'https://www.slovensko.sk/sk/titulna-stranka'

    livecheck do
        url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer.dmg"
        regex(/Disig_Web_Signer_(\d+(?:[\.\-]\d+)+).dmg/i)
    end

    pkg 'Disig_Web_Signer.pkg'

    app 'Disig Web Signer.app'
end