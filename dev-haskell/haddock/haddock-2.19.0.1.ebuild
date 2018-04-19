# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -in-ghc-tree

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
#keep in sync with ghc-8.4.2
# KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RESTRICT=test # there is no haddock-test on hackage yet

RDEPEND="~dev-haskell/haddock-api-2.19.0.1:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-in-ghc-tree
}