# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4
#hackport: flags: -big_endian64,-use_altivec,use_sse2:cpu_flags_x86_sse2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Generate high quality pseudorandom numbers using a SIMD Fast Mersenne Twister"
HOMEPAGE="http://code.haskell.org/~dons/code/mersenne-random"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cpu_flags_x86_sse2"

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-big_endian64 \
		--flag=-use_altivec \
		$(cabal_flag cpu_flags_x86_sse2 use_sse2)
}
