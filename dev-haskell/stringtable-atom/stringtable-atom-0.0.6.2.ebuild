# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Memoize Strings as Atoms for fast comparison and sorting, with maps and sets"
HOMEPAGE="http://hackage.haskell.org/package/stringtable-atom"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="sybinbase"

RDEPEND="dev-haskell/binary:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		!sybinbase? ( dev-haskell/syb:=[profile?]
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag sybinbase sybinbase)
}
