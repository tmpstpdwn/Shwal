# Maintainer: Tmpstpdwn <tmpstpdwn@tuta.io>
pkgname=shwal
pkgver=1.0.r18.6cb11fc
pkgrel=1
pkgdesc="Set wallpaper and create colorschemes effortlesly. inspired by pywal."
arch=('x86_64')
url="https://github.com/tmpstpdwn/shwal.git"
license=('GPL3')
depends=('binutils' 'imagemagick' 'feh' 'jq' 'bc')
makedepends=('git')
provides=('shwal')
source=("git+$url")
md5sums=('SKIP')

pkgver() {
  cd "$srcdir/$pkgname"
  printf "${pkgver}.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  mkdir -p "${pkgdir}"/usr/bin
  mkdir -p "${pkgdir}"/usr/share/"${pkgname}"/config
  cd "$srcdir/$pkgname"
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README.md"
  install -Dm755 src/* "${pkgdir}"/usr/bin/
  cp -a config/. "${pkgdir}/usr/share/${pkgname}/config/"
}
