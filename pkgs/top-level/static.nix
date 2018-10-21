##################################
# The static overlay for Nixpkgs #
##################################
# Not all packages will build but support is done on a
# best effort basic.
#
# Note on Darwin/macOS: Apple does not provide a static libc
# so any attempts at static binaries are going to be very
# unsupported.
#
# Basic things like pkgsStatic.hello should work out of the box.
# More complicated things like a fully static NixOS might be possible
# but completely untested (sta.li competitor?)

self: super: let
  inherit (super.stdenvAdapters) makeStaticBinaries
                                 overrideInStdenv
                                 makeStaticLibraries;
  inherit (super.lib) foldl optional flip id;

  staticAdapters = [ makeStaticLibraries ]

    # Apple does not provide a static version of libSystem or crt0.o
    # So we can’t build static binaries without extensive hacks.
    ++ optional (!super.stdenv.hostPlatform.isDarwin) makeStaticBinaries

    # Glibc doesn’t come with static runtimes by default.
    # ++ optional (super.stdenv.hostPlatform.libc == "glibc") ((flip overrideInStdenv) [ self.stdenv.glibc.static ])
  ;

in {
  stdenv = foldl (flip id) super.stdenv staticAdapters;
  # libiconv = super.libiconv.override {
  #   enableShared = false;
  #   enableStatic = true;
  # };
  ncurses = super.ncurses.override {
    enableStatic = true;
  };
  libxml2 = super.libxml2.override {
    enableShared = false;
    enableStatic = true;
  };
  zlib = super.zlib.override {
    static = true;

    # Don’t use new stdenv zlib because
    # it doesn’t like the --disable-shared flag
    stdenv = super.stdenv;
  };
  xz = super.xz.override {
    enableStatic = true;
  };
  busybox = super.busybox.override {
    enableStatic = true;
  };
}
