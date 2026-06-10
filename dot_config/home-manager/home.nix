{ pkgs, ... }:

{
  home.username = "morgan";
  home.homeDirectory = "/home/morgan";
  home.stateVersion = "26.05";

  targets.genericLinux.enable = true;

  home.packages = with pkgs; [
    ### system packages ###
    nh
    devenv

    # bitwarden-desktop
    metasploit

    haskellPackages.stack

    ### neovim ###
    # lsp
    basedpyright
    ruff
    lua-language-server
    typescript-language-server
    tinymist
    zls
    nixd
    haskellPackages.haskell-language-server

    # lint
    typos
    haskellPackages.hlint

    # formatter
    nixfmt
    haskellPackages.fourmolu
  ];

  gtk = {
    enable = true;
    colorScheme = "dark";
    gtk4.theme = null;
  };

  programs.home-manager.enable = true;
}
