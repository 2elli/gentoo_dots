{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs; [
        ghc
        haskellPackages.haskell-language-server
        haskellPackages.hlint
        haskellPackages.fourmolu
    ];
}
