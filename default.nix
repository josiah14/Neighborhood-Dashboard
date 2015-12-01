with import <nixpkgs> {}; {
  cannyFreeRadicalEnv = stdenv.mkDerivation rec {
    name = "canny-free-radical-env";
    version = "0.1";
    src = ./.;
    buildInputs = [
        stdenv
        libyaml
        libxml2
        libxslt
        ruby_2_2_2
        bundler
        zlib
        postgresql94
        sqlite
        zsh
        git
        nodejs-0_12
    ];
  };
}
