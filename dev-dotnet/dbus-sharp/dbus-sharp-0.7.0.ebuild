# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=2

inherit mono

DESCRIPTION="Managed D-Bus Implementation for .NET"
HOMEPAGE="https://github.com/mono/dbus-sharp"
SRC_URI="https://github.com/downloads/mono/dbus-sharp/dbus-sharp-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/mono-2.8.1
	>=sys-apps/dbus-1"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

S=${WORKDIR}/${PN}-${PV}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS README
}