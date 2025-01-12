# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_PN=powerpuff
DESCRIPTION="Quotes taken from the Power Puff Girls series from Cartoon Network"
HOMEPAGE="http://eol.init1.nl/content/view/43/54/"
SRC_URI="http://eelco.is.a.rootboy.net/fortunecookies/${MY_PN}-${PV}.tar.gz"

S=${WORKDIR}/${MY_PN}-${PV}

LICENSE="GPL-2"

SLOT="0"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins powerpuff powerpuff.dat
}
