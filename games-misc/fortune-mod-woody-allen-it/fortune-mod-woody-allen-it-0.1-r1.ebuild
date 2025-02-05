# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Fortune database for Woody Allen quotes (in Italian)"
HOMEPAGE="http://somemixedstuff.blogspot.com/2007/04/set-of-fortunes-of-woody-allen-quotes.html"
SRC_URI="http://utenti.lycos.it/gutter/${PN}/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND="games-misc/fortune-mod"

# S=${WORKDIR}/${PN}

src_install() {
	insinto /usr/share/fortune
	doins ${PN} ${PN}.dat
}
