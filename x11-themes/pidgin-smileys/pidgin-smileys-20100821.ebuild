DESCRIPTION="Pidgin smiley themes"
HOMEPAGE="http://pidgin.im/"
SRC_URI="http://gaim.sourceforge.net/exhaustive.tar.gz
	http://www.the-kgb.org/~reivec/Bugeyes.tar.gz
	http://www.the-kgb.org/~reivec/CrystalAIM.tar.gz
	http://www.the-kgb.org/~reivec/EasterAIM.tar.gz
	http://www.gnomepro.com/smallsmiles/SmallSmiles.tar.gz
	http://users.skynet.be/xterm/tweak-0.1.3.tar.gz
	http://hejieshijie.net/files/Maya.tar.gz
	http://stephane.pontier.free.fr/projects/TrillyPro.tgz
	http://files.andreineculau.com/projects/pidgin/original-smileys/pidgin-original-1.9.tgz
	mirror://gentoo/pidgin-penguins-smileys-1.0.tar.bz2"

LICENSE="as-is"
IUSE=""
SLOT="0"

KEYWORDS="~alpha amd64 ~ia64 ppc ppc64 ~sparc x86"
RDEPEND="net-im/pidgin"
DEPEND="app-arch/unzip
	!x11-themes/pidgin-penguins-smileys"

S="${WORKDIR}"

src_unpack() {
	unpack ${A}

	# Delete all files not theme-related
	find "${S}" -type f ! -name '*.png' -and ! -name '*.gif' -and ! -name '*.jpg' -and ! -name 'theme' -delete
}

src_install() {
	dodir /usr/share/pixmaps/pidgin/emotes
	cp -r "${S}"/* "${D}"/usr/share/pixmaps/pidgin/emotes
}

pkg_postinst() {
	einfo "To request a new theme to be added, file a request at"
	einfo "http://bugs.gentoo.org/"
}
