# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Blaze frontend for the digestive-functors library"
HOMEPAGE="https://github.com/jaspervdj/digestive-functors"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?] <dev-haskell/blaze-markup-0.8:=[profile?]
	>=dev-haskell/digestive-functors-0.8:=[profile?] <dev-haskell/digestive-functors-0.9:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=("${FILESDIR}"/${P}-df-081.patch)
