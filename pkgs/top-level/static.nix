self: super: {
  stdenv = (if super.stdenv.isDarwin then (x: x)
            else super.stdenvAdapters.makeStaticBinaries)
              (super.stdenvAdapters.makeStaticLibraries super.stdenv);
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
