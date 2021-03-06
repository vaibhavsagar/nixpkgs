# Generated by carnix 0.9.8: carnix generate-nix
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO;
  carnix = crates.crates.carnix."0.9.8" deps;
  __all = [ (carnix {}) ];
  deps.aho_corasick."0.6.8" = {
    memchr = "2.1.0";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.6";
  };
  deps.argon2rs."0.2.5" = {
    blake2_rfc = "0.2.18";
    scoped_threadpool = "0.1.9";
  };
  deps.arrayvec."0.4.7" = {
    nodrop = "0.1.12";
  };
  deps.atty."0.2.11" = {
    termion = "1.5.1";
    libc = "0.2.43";
    winapi = "0.3.6";
  };
  deps.backtrace."0.3.9" = {
    cfg_if = "0.1.6";
    rustc_demangle = "0.1.9";
    backtrace_sys = "0.1.24";
    libc = "0.2.43";
    winapi = "0.3.6";
  };
  deps.backtrace_sys."0.1.24" = {
    libc = "0.2.43";
    cc = "1.0.25";
  };
  deps.bitflags."1.0.4" = {};
  deps.blake2_rfc."0.2.18" = {
    arrayvec = "0.4.7";
    constant_time_eq = "0.1.3";
  };
  deps.carnix."0.9.8" = {
    clap = "2.32.0";
    dirs = "1.0.4";
    env_logger = "0.5.13";
    error_chain = "0.12.0";
    itertools = "0.7.8";
    log = "0.4.5";
    nom = "3.2.1";
    regex = "1.0.5";
    serde = "1.0.80";
    serde_derive = "1.0.80";
    serde_json = "1.0.32";
    tempdir = "0.3.7";
    toml = "0.4.8";
    url = "1.7.2";
  };
  deps.cc."1.0.25" = {};
  deps.cfg_if."0.1.6" = {};
  deps.clap."2.32.0" = {
    atty = "0.2.11";
    bitflags = "1.0.4";
    strsim = "0.7.0";
    textwrap = "0.10.0";
    unicode_width = "0.1.5";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.constant_time_eq."0.1.3" = {};
  deps.dirs."1.0.4" = {
    redox_users = "0.2.0";
    libc = "0.2.43";
    winapi = "0.3.6";
  };
  deps.either."1.5.0" = {};
  deps.env_logger."0.5.13" = {
    atty = "0.2.11";
    humantime = "1.1.1";
    log = "0.4.5";
    regex = "1.0.5";
    termcolor = "1.0.4";
  };
  deps.error_chain."0.12.0" = {
    backtrace = "0.3.9";
  };
  deps.failure."0.1.3" = {
    backtrace = "0.3.9";
    failure_derive = "0.1.3";
  };
  deps.failure_derive."0.1.3" = {
    proc_macro2 = "0.4.20";
    quote = "0.6.8";
    syn = "0.15.13";
    synstructure = "0.10.0";
  };
  deps.fuchsia_zircon."0.3.3" = {
    bitflags = "1.0.4";
    fuchsia_zircon_sys = "0.3.3";
  };
  deps.fuchsia_zircon_sys."0.3.3" = {};
  deps.humantime."1.1.1" = {
    quick_error = "1.2.2";
  };
  deps.idna."0.1.5" = {
    matches = "0.1.8";
    unicode_bidi = "0.3.4";
    unicode_normalization = "0.1.7";
  };
  deps.itertools."0.7.8" = {
    either = "1.5.0";
  };
  deps.itoa."0.4.3" = {};
  deps.lazy_static."1.1.0" = {
    version_check = "0.1.5";
  };
  deps.libc."0.2.43" = {};
  deps.log."0.4.5" = {
    cfg_if = "0.1.6";
  };
  deps.matches."0.1.8" = {};
  deps.memchr."1.0.2" = {
    libc = "0.2.43";
  };
  deps.memchr."2.1.0" = {
    cfg_if = "0.1.6";
    libc = "0.2.43";
    version_check = "0.1.5";
  };
  deps.nodrop."0.1.12" = {};
  deps.nom."3.2.1" = {
    memchr = "1.0.2";
  };
  deps.percent_encoding."1.0.1" = {};
  deps.proc_macro2."0.4.20" = {
    unicode_xid = "0.1.0";
  };
  deps.quick_error."1.2.2" = {};
  deps.quote."0.6.8" = {
    proc_macro2 = "0.4.20";
  };
  deps.rand."0.4.3" = {
    fuchsia_zircon = "0.3.3";
    libc = "0.2.43";
    winapi = "0.3.6";
  };
  deps.redox_syscall."0.1.40" = {};
  deps.redox_termios."0.1.1" = {
    redox_syscall = "0.1.40";
  };
  deps.redox_users."0.2.0" = {
    argon2rs = "0.2.5";
    failure = "0.1.3";
    rand = "0.4.3";
    redox_syscall = "0.1.40";
  };
  deps.regex."1.0.5" = {
    aho_corasick = "0.6.8";
    memchr = "2.1.0";
    regex_syntax = "0.6.2";
    thread_local = "0.3.6";
    utf8_ranges = "1.0.1";
  };
  deps.regex_syntax."0.6.2" = {
    ucd_util = "0.1.1";
  };
  deps.remove_dir_all."0.5.1" = {
    winapi = "0.3.6";
  };
  deps.rustc_demangle."0.1.9" = {};
  deps.ryu."0.2.6" = {};
  deps.scoped_threadpool."0.1.9" = {};
  deps.serde."1.0.80" = {};
  deps.serde_derive."1.0.80" = {
    proc_macro2 = "0.4.20";
    quote = "0.6.8";
    syn = "0.15.13";
  };
  deps.serde_json."1.0.32" = {
    itoa = "0.4.3";
    ryu = "0.2.6";
    serde = "1.0.80";
  };
  deps.strsim."0.7.0" = {};
  deps.syn."0.15.13" = {
    proc_macro2 = "0.4.20";
    quote = "0.6.8";
    unicode_xid = "0.1.0";
  };
  deps.synstructure."0.10.0" = {
    proc_macro2 = "0.4.20";
    quote = "0.6.8";
    syn = "0.15.13";
    unicode_xid = "0.1.0";
  };
  deps.tempdir."0.3.7" = {
    rand = "0.4.3";
    remove_dir_all = "0.5.1";
  };
  deps.termcolor."1.0.4" = {
    wincolor = "1.0.1";
  };
  deps.termion."1.5.1" = {
    libc = "0.2.43";
    redox_syscall = "0.1.40";
    redox_termios = "0.1.1";
  };
  deps.textwrap."0.10.0" = {
    unicode_width = "0.1.5";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.1.0";
  };
  deps.toml."0.4.8" = {
    serde = "1.0.80";
  };
  deps.ucd_util."0.1.1" = {};
  deps.unicode_bidi."0.3.4" = {
    matches = "0.1.8";
  };
  deps.unicode_normalization."0.1.7" = {};
  deps.unicode_width."0.1.5" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.url."1.7.2" = {
    idna = "0.1.5";
    matches = "0.1.8";
    percent_encoding = "1.0.1";
  };
  deps.utf8_ranges."1.0.1" = {};
  deps.vec_map."0.8.1" = {};
  deps.version_check."0.1.5" = {};
  deps.winapi."0.3.6" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_util."0.1.1" = {
    winapi = "0.3.6";
  };
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.wincolor."1.0.1" = {
    winapi = "0.3.6";
    winapi_util = "0.1.1";
  };
}
