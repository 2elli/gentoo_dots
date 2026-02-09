{
    description = "System Packages";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };

    outputs = {self, nixpkgs, ...} @ inputs: let
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {
        packages."x86_64-linux" = {
            haskell = pkgs.buildEnv {
                name = "haskell";
                paths = with pkgs; [
                    ghc
                    haskellPackages.haskell-language-server
                    haskellPackages.hlint
                    haskellPackages.fourmolu
                    haskellPackages.stack
                ];
            };
            default = pkgs.buildEnv {
                name = "system-packages";
                paths = [
                    self.packages."x86_64-linux".haskell
                ];
            };
        };
    };
}
