# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/jdk/jdk-1.6.0.ebuild,v 1.24 2013/03/10 11:01:08 sera Exp $

DESCRIPTION="Virtual for Java Development Kit (JDK)"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="1.6"
KEYWORDS="amd64 ppc ppc64 x86 ~ppc-aix ~x86-fbsd ~x64-freebsd ~hppa-hpux ~ia64-hpux ~amd64-linux ~x86-linux ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE=""

# The keyword voodoo below is needed so that ppc(64) users will
# get a masked license warning for ibm-jdk-bin
# instead of (not useful) missing keyword warning for sun-jdk
# see #287615
# note that this "voodoo" is pretty annoying for Prefix, and that we didn't


# icedtea-bin-1* is old versioning scheme of icedtea-bin-6*
#X86_OPTS="=dev-java/sun-jdk-1.6.0*
#		${COMMON_INC}"

#X86_PREFIX_OPTS="|| (
#		=dev-java/icedtea-bin-6*
#		=dev-java/icedtea-bin-1*
#		=dev-java/sun-jdk-1.6.0*
#	)"
#
#PPC_OPTS="|| (
#		=dev-java/ibm-jdk-bin-1.6.0*
#		=dev-java/icedtea-6*
#	)"

#COMMON_OPTS="|| (
#		${COMMON_INC}
#		)"

RDEPEND="=dev-java/sun-jdk-1.6.0*"
DEPEND="${RDEPEND}"
