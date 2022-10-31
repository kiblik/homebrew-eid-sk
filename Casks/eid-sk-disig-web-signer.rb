cask 'eid-sk-disig-web-signer' do
    version :latest
    sha256 :no_check

    url 'https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer.dmg'
    name 'Aplikacia pre ZEP a KEP'
    homepage 'https://www.slovensko.sk/sk/titulna-stranka'

    pkg 'Disig_Web_Signer.pkg'

    app 'Disig Web Signer.app'
end