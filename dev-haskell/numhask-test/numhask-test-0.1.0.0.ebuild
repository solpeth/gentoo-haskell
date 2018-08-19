# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Laws and tests for numhask"
HOMEPAGE="https://github.com/tonyday567/numhask#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/numhask-prelude-0.1.0.0:=[profile?] <dev-haskell/numhask-prelude-0.2:=[profile?]
	>=dev-haskell/quickcheck-2.8:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/tasty-1.0.1.1:=[profile?] <dev-haskell/tasty-1.2:=[profile?]
	>=dev-haskell/tasty-quickcheck-0.9.2:=[profile?] <dev-haskell/tasty-quickcheck-1.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"