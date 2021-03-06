# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library exposing some functionality of Haddock"
HOMEPAGE="https://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.2.2, might not be required but needs porting revdeps
# KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.8.2:=
	>=dev-haskell/transformers-0.3.0:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/base-compat-0.9.3 <dev-haskell/base-compat-0.10
		>=dev-haskell/transformers-0.3.0 <dev-haskell/transformers-0.6
		>=dev-haskell/hspec-2.4.4 <dev-haskell/hspec-2.5
		>=dev-haskell/quickcheck-2.10 <dev-haskell/quickcheck-2.11 )
"
