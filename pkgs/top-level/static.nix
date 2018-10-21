self: super: let
  inherit (super.stdenvAdapters) makeStaticBinaries
                                 overrideInStdenv
                                 makeStaticLibraries;
  inherit (super.lib) foldl optional flip id;
  staticAdapters = [ makeStaticLibraries ]
    ++ optional (!super.stdenv.hostPlatform.isDarwin) makeStaticBinaries
    ++ optional (super.stdenv.hostPlatform.libc == "glibc") ((flip overrideInStdenv) [ super.buildPackages.glibc.static ])
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
  xz = super.xz.override {
    enableStatic = true;
  };
  busybox = super.busybox.override {
    enableStatic = true;
  };
}
