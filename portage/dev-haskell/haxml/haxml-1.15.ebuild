# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="lib bin haddock"
inherit base haskell-cabal

MY_PN=HaXml
MY_P=${MY_PN}-${PV}

DESCRIPTION="Haskell utilities for parsing, filtering, transforming and generating XML documents"
HOMEPAGE="http://www.cs.york.ac.uk/fp/HaXml-1.14/"
SRC_URI="http://www.cs.york.ac.uk/fp/HaXml-1.14/${MY_P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0"

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

IUSE=""

# actually, >=ghc-5.02 should be ok (if not using cabal)
# hugs and nhc98 are ok too, somebody might want to add support for them
DEPEND=">=virtual/ghc-6.2
		>=dev-haskell/cabal-1.1.3-r1"

S=${WORKDIR}/${MY_P}

src_unpack() {
	base_src_unpack
	cd "${S}"
	epatch "${FILESDIR}/${PN}-1.15-parse-error.patch"

	#Set VERSION
	sed -i "src/Text/XML/HaXml.hs" -e "s/VERSION/\"${PV}\"/"

	# TODO: This is very hard to do:
	# The HaXml.cabal file doesn't build the tools, so we add them in:
	#for binary in Canonicalise DtdToHaskell MkOneOf Validate Xtract; do
	#	echo                                >> "${S}/HaXml.cabal"
	#	echo "executable:     ${binary}"    >> "${S}/HaXml.cabal"
	#	echo "main-is:        ${binary}.hs" >> "${S}/HaXml.cabal"
	#	echo "hs-source-dirs: src/tools"    >> "${S}/HaXml.cabal"
	#	echo "extensions:     CPP"          >> "${S}/HaXml.cabal"
	#done
}

src_install() {
	cabal_src_install

	if use doc; then
		dohtml -r docs/*
		dodoc docs/icfp99.dvi docs/icfp99.ps.gz
	fi
}

