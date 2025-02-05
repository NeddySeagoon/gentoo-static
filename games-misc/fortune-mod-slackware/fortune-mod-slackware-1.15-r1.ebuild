# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
# this ebuild now uses the offensive flag since AOLS
# is not exactly 'G' rated :)

MY_PN=slack-fortunes-all
DESCRIPTION="This fortune mod is a collection of quotes seen on AOLS (Slackware)"
HOMEPAGE="http://fauxascii.com/linux/mod_quotes.html"
SRC_URI="http://fauxascii.com/linux/data/${MY_PN}-${PV}.tgz"

S=${WORKDIR}

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~m68k ~mips ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

IUSE="offensive"

RDEPEND="games-misc/fortune-mod"

pkg_setup() {
	if ! use offensive ; then
		elog "These fortunes have offensive content. Enable offensive USE Flag"
		elog "ex: USE=\"offensive\" emerge ${PN}"
		elog " or add to package.use file: games-misc/fortune-mod-slackware offensive"
		die "Setting the offensive use flag is required for this package"
	fi
}

src_prepare() {
	# get rid of md5 checks and extraneous files and backups
	rm -f index.* *.md5 *~
}

src_install() {
	insinto /usr/share/fortune
	doins *
}
