{ cabal, cairo, gtk2hs-buildtools, libc, mtl, pkgconfig, zlib }:

cabal.mkDerivation (self: {
  pname = "cairo";
  version = "0.12.4";
  sha256 = "0gy6nxhxam3yv0caj4psg9dd1a5yazh616fjbmjfh0kbk8vl6fbq";
  buildDepends = [ mtl ];
  buildTools = [ gtk2hs-buildtools ];
  extraLibraries = [ cairo libc pkgconfig zlib ];
  pkgconfigDepends = [ cairo ];
  doCheck = false;
  meta = {
    homepage = "http://projects.haskell.org/gtk2hs/";
    description = "Binding to the Cairo library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
