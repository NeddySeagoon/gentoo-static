# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_P=${PN/-mod/}
DESCRIPTION="Quotes from Hitchhikers Guide to the Galaxy"
HOMEPAGE="http://www.splitbrain.org/projects/fortunes/hg2g"
SRC_URI="http://www.splitbrain.org/_media/projects/fortunes/${MY_P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"
RESTRICT="mirror"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins hitchhiker hitchhiker.dat
}
