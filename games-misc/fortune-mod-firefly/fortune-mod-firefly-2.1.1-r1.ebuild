# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Quotes from FireFly"
HOMEPAGE="http://www.daughtersoftiresias.org/progs/firefly/"
SRC_URI="http://www.daughtersoftiresias.org/progs/firefly/${P/mod-}.tar.bz2"

S=${WORKDIR}

LICENSE="fairuse"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

# IUSE=""

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins firefly firefly.dat
}
