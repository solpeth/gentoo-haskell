# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="FunctorWithIndex, FoldableWithIndex, TraversableWithIndex"
HOMEPAGE="https://hackage.haskell.org/package/indexed-traversable"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-orphans-0.8.3:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/semigroups-0.18.4:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/transformers-compat-0.6.6:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/void-0.7.2:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"