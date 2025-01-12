# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# XORG_TARBALL_SUFFIX="bz2"

inherit xorg-3

DESCRIPTION="X.Org driver for mouse input devices"

KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~mips ppc ppc64 sparc x86 ~amd64-linux ~x86-linux"
IUSE=""

SRC_URI="https://www.x.org/releases/individual/driver/${P}.tar.bz2"

RDEPEND=">=x11-base/xorg-server-1.7"
DEPEND="${RDEPEND}"
