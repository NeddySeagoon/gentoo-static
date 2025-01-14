# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Quotes from the Alpha Centauri: Alien Crossfire tech tree"
HOMEPAGE="http://progsoc.org/~curious/"
SRC_URI="http://progsoc.org/~curious/files/${P}.tar.gz"

LICENSE="fairuse"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins smac smac.dat
}
