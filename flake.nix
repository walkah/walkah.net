{
  description = "walkah.net";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [ ruby nodejs ];
            shellHook = ''
              mkdir -p .gems

              export GEM_HOME=$PWD/.gems
              export GEM_PATH=$GEM_HOME
              export PATH=$PWD/bin:$GEM_HOME/bin:$PATH
              # https://github.com/sass/sassc-ruby/issues/148#issuecomment-644450274
              bundle config build.sassc --disable-lto
            '';
          };
        }
      );
}
