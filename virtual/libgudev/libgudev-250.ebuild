# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit multilib-build

DESCRIPTION="Virtual to install only sys-fs/eudev"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
# These default enabled IUSE flags should follow defaults of sys-fs/udev.
IUSE="gudev introspection selinux static-libs"

DEPEND=""
RDEPEND="sys-fs/eudev[${MULTILIB_USEDEP},hwdb,introspection?,selinux?,static-libs?]"
