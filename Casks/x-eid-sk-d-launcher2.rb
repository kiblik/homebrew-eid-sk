cask 'eid-sk-d-launcher2' do
    version :latest
    sha256 :no_check

    # eidas.minv.sk/TCTokenService/download was verified as official when first introduced to the cask
    url 'https://www.slovensko.sk/static/kep/apps/dlauncher2_2.x/DLauncher2.mac.dmg'
    name 'Aplikacia pre ZEP a KEP'
    homepage 'https://www.slovensko.sk/sk/titulna-stranka'

    app 'D.Launcher'
end