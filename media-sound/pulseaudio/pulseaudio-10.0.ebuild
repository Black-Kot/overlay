# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/mysql/mysql-5.5.ebuild,v 1.6 2012/12/05 11:24:27 grobian Exp $

EAPI="2"

DESCRIPTION="Replace pulseaudio with apulse!!"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~sparc-fbsd ~x86-fbsd ~x86-linux"
IUSE="+alsa +asyncns bluetooth +caps dbus doc equalizer +gdbm +glib gnome gtk ipv6 jack libsamplerate lirc neon +orc oss qt4 realtime ssl systemd system-wide tcpd test +udev +webrtc-aec +X xen zeroconf"

DEPEND=""
# TODO: add Drizzle and MariaDB here
RDEPEND="media-sound/apulse"
