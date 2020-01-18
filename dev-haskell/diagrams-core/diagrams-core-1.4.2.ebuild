# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Core libraries for diagrams EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/adjunctions-4.0:=[profile?] <dev-haskell/adjunctions-5.0:=[profile?]
	>=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1.0:=[profile?]
	>=dev-haskell/dual-tree-0.2:=[profile?] <dev-haskell/dual-tree-0.3:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/linear-1.11.3:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-haskell/monoid-extras-0.3:=[profile?] <dev-haskell/monoid-extras-0.6:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/profunctors-5.0:=[profile?] <dev-haskell/profunctors-6.0:=[profile?]
	>=dev-haskell/semigroups-0.8.4:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.2 && < 4.14' 'base >= 4.2' \
		'containers >= 0.4.2 && < 0.7' 'containers >= 0.4.2' \
		'lens >= 4.0 && < 4.19' 'lens >= 4.0'
}