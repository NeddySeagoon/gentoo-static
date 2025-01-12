# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

XORG_TARBALL_SUFFIX="bz2"

inherit xorg-3

DESCRIPTION="Keyboard input driver"

KEYWORDS="~alpha amd64 arm arm64 ~hppa ~mips ppc ppc64 sparc x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=x11-base/xorg-server-1.10"
DEPEND="${RDEPEND}"
