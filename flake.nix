{
  description = "walkah.net";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.05";
    flake-utils.url = "github:numtide/flake-utils";

    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [ libyaml nodejs ruby ];
            shellHook = ''
              mkdir -p .gems

              export GEM_HOME=$PWD/.gems
              export GEM_PATH=$GEM_HOME
              export PATH=$PWD/bin:$GEM_HOME/bin:$PATH
            '';
          };
        }
      );
}
