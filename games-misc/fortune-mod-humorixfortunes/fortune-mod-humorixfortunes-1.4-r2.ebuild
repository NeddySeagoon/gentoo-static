# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_P=${P/fortune-mod-/}
DESCRIPTION="Extra fortune cookies for fortune"
HOMEPAGE="http://i-want-a-website.com/about-linux/downloads.shtml"
SRC_URI="http://humorix.org/downloads/${MY_P}.tar.gz"

LICENSE="freedist fairuse"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-solaris"

RDEPEND="games-misc/fortune-mod"

src_install() {
	insinto /usr/share/fortune
	doins humorix-misc humorix-misc.dat
	doins humorix-stories humorix-stories.dat
}
