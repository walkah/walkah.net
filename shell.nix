let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
in pkgs.mkShell {
  name = "net";
  buildInputs = with pkgs; [ ruby nodejs ];
}
