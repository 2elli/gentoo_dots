{ config, pkgs, ... }:

{
  home.username = "morgan";
  home.homeDirectory = "/home/morgan";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    ### system packages ###
    ghc
    haskellPackages.stack
    metasploit
    opencode
    bitwarden-desktop

    ### neovim ###
    # lsp
    basedpyright
    ruff
    lua-language-server
    typescript-language-server
    tinymist
    zls
    haskellPackages.haskell-language-server
    nil

    # lint
    typos
    haskellPackages.hlint

    # formatter
    haskellPackages.fourmolu
    nixfmt
  ];

  # home.file = {
  # };

  gtk = {
    enable = true;
    colorScheme = "dark";
  };

  programs.home-manager.enable = true;
}
