# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit emul-linux-x86

SRC_URI="http://192.168.0.1:8080/test.tar.xz"

LICENSE="BSD MIT LGPL-3 SGI-B-2.0"

KEYWORDS="-* amd64 ~amd64-linux"

DEPEND="app-admin/eselect-opengl
	>=app-admin/eselect-mesa-0.0.9"
RDEPEND=">=app-emulation/emul-linux-x86-xlibs-20100611
	!<app-emulation/emul-linux-x86-xlibs-20100611
	media-libs/mesa"

#src_prepare() {
#	emul-linux-x86_src_prepare
#	rm -f "${S}/usr/lib32/libGL.so" || die
#	rm -f "${S}/usr/lib32/libGL.so.1" || die
#}

pkg_postinst() {
	# Update GL symlinks
	eselect opengl set --use-old || die
	# And the same for mesa (bug #355393)
	eselect mesa set 32bit --auto || die
}
