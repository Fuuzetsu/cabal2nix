{ cabal, cairo, glib, gtk, gtk2hs-buildtools, libc, mtl, pango, pkgconfig }:

cabal.mkDerivation (self: {
  pname = "gtk";
  version = "0.12.4";
  sha256 = "0w6ffi9fdz44kb6g1kipk5780r2wc2l3f5cgxjx5nd60qz1xh7p2";
  buildDepends = [ cairo glib mtl pango ];
  buildTools = [ gtk2hs-buildtools ];
  extraLibraries = [ libc pkgconfig ];
  pkgconfigDepends = [ glib gtk ];
  doCheck = false;
  meta = {
    homepage = "http://projects.haskell.org/gtk2hs/";
    description = "Binding to the Gtk+ graphical user interface library";
    license = self.stdenv.lib.licenses.lgpl21;
    platforms = self.ghc.meta.platforms;
  };
})
