# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Simple modules for writing apps with Snap, abstracted from hpaste"
HOMEPAGE="https://github.com/chrisdone/snap-app"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.6:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?]
	dev-haskell/cgi:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/feed:=[profile?]
	dev-haskell/monadcatchio-transformers:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/postgresql-simple:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/snap-core:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.6.1-ghc-7.10.patch
}
