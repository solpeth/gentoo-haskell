# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tries from representations of polynomial functors"
HOMEPAGE="http://github.com/ekmett/representable-tries/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/adjunctions-3:=[profile?]
		>=dev-haskell/bifunctors-3:=[profile?]
		>=dev-haskell/comonad-3:=[profile?]
		>=dev-haskell/comonad-transformers-3:=[profile?]
		>=dev-haskell/distributive-0.2.2:=[profile?]
		>=dev-haskell/keys-3.0.0.1:=[profile?]
		>=dev-haskell/mtl-2.0.1:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/representable-functors-3.0.0.1:=[profile?]
		>=dev-haskell/semigroupoids-3:=[profile?]
		>=dev-haskell/semigroups-0.8.3.1:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
