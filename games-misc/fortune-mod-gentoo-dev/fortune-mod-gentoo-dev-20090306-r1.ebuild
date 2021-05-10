# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="Fortune database of #gentoo-dev quotes"
HOMEPAGE="https://www.gentoo.org/"
MY_PN="fortune-gentoo-dev"
MY_P="${MY_PN}-${PV}"
SRC_URI="mirror://gentoo/${MY_P}.tar.bz2
		 https://dev.gentoo.org/~robbat2/distfiles/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86"
IUSE="offensive"

RDEPEND="games-misc/fortune-mod"
# Perl is used to build stuff only
# and strfile belongs to fortune-mod
RDEPEND="dev-lang/perl"

S="${WORKDIR}/${MY_P}"

src_install() {
	default
	use offensive || rm -f "${D}"/usr/share/fortune/off/*
}
