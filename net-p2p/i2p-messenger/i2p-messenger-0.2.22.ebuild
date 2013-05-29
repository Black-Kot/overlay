# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Peer-to-peer serverless messenger over I2P"
HOMEPAGE="http://echelon.i2p/qti2pmessenger/"
SRC_URI="https://launchpad.net/~i2p.packages/+archive/i2p/+files/i2p-messenger_${PN}.orig.tar.bz2 -> ${P}.zip"

LICENSE="GPL-2 GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="net-p2p/i2p"
RDEPEND="${DEPEND}"

S="${WORKDIR}/I2P-Messenger"

inherit eutils qt4-r2

src_compile() {
	eqmake4 I2P-Messenger_release.pro
	emake
}

src_install() {
	mv I2P-Messenger_release I2P-Messenger
	touch UseHomeForConfigStore

	insinto /usr/share/i2pmessenger/

	doins -r qss sounds templates
	doins UseHomeForConfigStore

	exeinto /usr/share/i2pmessenger/
	doexe I2P-Messenger

	dobin ${FILESDIR}/i2p-messenger
}
