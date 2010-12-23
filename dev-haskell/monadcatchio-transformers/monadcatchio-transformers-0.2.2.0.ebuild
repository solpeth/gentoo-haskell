# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

MY_PN="MonadCatchIO-transformers"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Monad-transformer compatible version of the Control.Exception module"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/MonadCatchIO-transformers"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS="=dev-haskell/transformers-0.2*"
RDEPEND=">=dev-lang/ghc-6.10
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.6
		=dev-haskell/extensible-exceptions-0.1*
		${RDEPEND}"

S="${WORKDIR}/${MY_P}"
