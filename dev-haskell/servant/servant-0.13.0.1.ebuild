# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A family of combinators for defining webservices APIs"
HOMEPAGE="http://haskell-servant.readthedocs.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.2.3.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.0:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.9.3:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/case-insensitive-1.2.0.10:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/http-api-data-0.3.7.1:=[profile?] <dev-haskell/http-api-data-0.4:=[profile?]
	>=dev-haskell/http-media-0.7.0:=[profile?] <dev-haskell/http-media-0.8:=[profile?]
	>=dev-haskell/http-types-0.12:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mmorph-1.1.0:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/natural-transformation-0.4:=[profile?] <dev-haskell/natural-transformation-0.5:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/singleton-bool-0.1.2.0:=[profile?] <dev-haskell/singleton-bool-0.2:=[profile?]
	>=dev-haskell/string-conversions-0.4.0.1:=[profile?] <dev-haskell/string-conversions-0.5:=[profile?]
	>=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vault-0.3.0.7:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/cabal-doctest-1.0.2 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/aeson-compat-0.3.3 <dev-haskell/aeson-compat-0.4
		>=dev-haskell/doctest-0.13.0
		>=dev-haskell/hspec-2.4.4 <dev-haskell/hspec-2.6
		>=dev-haskell/quickcheck-2.10.1 <dev-haskell/quickcheck-2.12
		>=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'doctest >= 0.13.0 && <0.16' 'doctest >= 0.13.0'
}