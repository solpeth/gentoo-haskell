# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999
#hackport: flags: +template-haskell

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generalized bananas, lenses and barbed wire"
HOMEPAGE="https://github.com/ekmett/recursion-schemes/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-orphans-0.5.4:=[profile?]
	>=dev-haskell/bifunctors-4:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/free-4:=[profile?]
	dev-haskell/nats:=[profile?]
	>=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( <dev-haskell/hunit-1.7 )
"

src_prepare() {
	default

	cabal_chdeps \
		'free                 >= 4       && < 5' 'free                 >= 4' \
		'template-haskell >= 2.5.0.0 && < 2.13' 'template-haskell >= 2.5.0.0' \
		'base-orphans >= 0.5.4 && <0.7' 'base-orphans >= 0.5.4'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=template-haskell
}