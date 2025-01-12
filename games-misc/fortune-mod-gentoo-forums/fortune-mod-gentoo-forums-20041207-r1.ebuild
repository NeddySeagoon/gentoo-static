# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Fortune database of quotes from forums.gentoo.org"
HOMEPAGE="https://forums.gentoo.org/"
SRC_URI="mirror://gentoo/gentoo-forums-${PV}.gz
	offensive? ( mirror://gentoo/gentoo-forums-offensive-${PV}.gz )"

S=${WORKDIR}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="offensive"

RDEPEND="games-misc/fortune-mod"

src_compile() {
	mv gentoo-forums-${PV} gentoo-forums || die
	use offensive && cat gentoo-forums-offensive-${PV} >> gentoo-forums
	strfile gentoo-forums || die
}

src_install() {
	insinto /usr/share/fortune
	doins gentoo-forums gentoo-forums.dat
}
