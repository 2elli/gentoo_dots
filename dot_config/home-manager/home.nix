{ pkgs, ... }:

{
  home.username = "morgan";
  home.homeDirectory = "/home/morgan";
  home.stateVersion = "26.05";

  targets.genericLinux.enable = true;

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
    nixd

    # lint
    typos
    haskellPackages.hlint

    # formatter
    haskellPackages.fourmolu
    nixfmt
  ];

  gtk = {
    enable = true;
    colorScheme = "dark";
    gtk4.theme = null;
  };

  programs.home-manager.enable = true;
}
