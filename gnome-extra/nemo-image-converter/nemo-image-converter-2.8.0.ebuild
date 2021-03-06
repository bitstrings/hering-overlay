# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="nemo extension to mass resize or rotate images"
HOMEPAGE="https://github.com/linuxmint/nemo-extensions"
SRC_URI="https://github.com/linuxmint/nemo-extensions/archive/2.8.x.tar.gz"
S="${WORKDIR}/nemo-extensions-2.8.x/${PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="gnome-base/gnome-common"
DEPEND=">=gnome-extra/nemo-2.8.0[introspection]"

src_prepare() {
	if [[ ! -e configure ]] ; then
		./autogen.sh || die
	fi
}
