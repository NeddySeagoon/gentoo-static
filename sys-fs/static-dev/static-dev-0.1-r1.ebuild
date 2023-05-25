# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="A skeleton, statically managed /dev"
HOMEPAGE="https://bugs.gentoo.org/107875"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm hppa ~ia64 m68k ~mips ppc ppc64 ~s390 sparc x86"
IUSE=""

RDEPEND="sys-apps/makedev"

pkg_preinst() {
	if [[ -d ${ROOT}/dev/.udev || -c ${ROOT}/dev/.devfs ]]; then
		echo ""
		eerror "We have detected that you currently use udev or devfs or devtmpfs"
		eerror "and this ebuild cannot install to the same mount-point."
		eerror "Please reinstall the ebuild (as root) like follows:"
		eerror ""
		eerror "mkdir /tmp/newroot"
		eerror "mount -o bind / /tmp/newroot"
		eerror "ROOT=/tmp/newroot/ emerge sys-fs/static-dev"
		eerror "umount /tmp/newroot"
		die "Cannot install on udev/devfs tmpfs."
	fi
}

pkg_postinst() {
	MAKEDEV -d "${ROOT}"/dev generic sg scd rtc hde hdf hdg hdh input audio video
}
