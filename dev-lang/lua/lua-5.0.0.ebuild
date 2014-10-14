# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

DESCRIPTION="Alias for LuaJit"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="dev-lang/luajit:2"
DEPEND="${RDEPEND}"


src_install(){

newdir /usr/include /usr/include/luajit-2.0/
for f in `echo "lauxlib.h  luaconf.h  lua.h  lua.hpp  luajit.h  lualib.h"`; do ln -s /usr/include/luajit-2.0/$f /usr/include/$f; done;
#mkdir -p /usr/lib64/ /usr/bin/ /usr/share/ /usr/lib64/pkgconfig/
newlink /usr/lib64/libluajit-5.1.so /usr/lib64/liblua.so
newlink -s /usr/lib64/libluajit-5.1.so /usr/lib64/liblua.so
newlink -s /usr/lib64/libluajit-5.1.so /usr/lib64/liblua.so.5
newlink -s /usr/lib64/libluajit-5.1.so /usr/lib64/liblua.so.5.1.3
newlink -s /usr/lib64/libluajit-5.1.a /usr/lib64/liblua.a
newlink -s /usr/bin/luajit /usr/bin/lua
newlink -s /usr/bin/luajit /usr/bin/luac
newfile "${FILESDIR}"/lua.pc /usr/lib64/pkgconfig/lua.pc
newdir /usr/lib64/lua/5.1 /usr/share/lua/5.1 -p
}
