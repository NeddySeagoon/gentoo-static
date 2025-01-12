# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Quotes from George W. Bush"
HOMEPAGE="http://dubya.seiler.us/"
SRC_URI="http://seiler.us/wiki/images/8/8c/Dubya-${PV}.tar.gz"

S=${WORKDIR}/${PN/fortune-mod-/}

LICENSE="fairuse"

SLOT="0"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins dubya dubya.dat
}
