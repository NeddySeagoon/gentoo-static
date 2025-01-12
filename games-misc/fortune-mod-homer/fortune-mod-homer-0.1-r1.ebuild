# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Quotes from Homer Simpson"
HOMEPAGE="http://www.cs.indiana.edu/~crcarter/homer/homer.html"
SRC_URI="http://www.cs.indiana.edu/~crcarter/homer/homer-quotes.tar.gz"

S=${WORKDIR}/${PN/mod-/}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins homer homer.dat
}
