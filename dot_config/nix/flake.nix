{
  description = "System Packages";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = {
        default = pkgs.buildEnv {
          name = "system-packages";
          paths = with pkgs; [
            ghc
            haskellPackages.stack
            opencode
            metasploit
            bitwarden-desktop
          ];
        };
      };
    };
}
