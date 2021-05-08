# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_P=${PN}-quotes.${PV}
DESCRIPTION="Quotes from Frank Herbert's Dune Chronicles"
HOMEPAGE="http://dune.s31.pl/"
SRC_URI="http://dune.s31.pl/${MY_P}.tar.gz"

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins *
}
