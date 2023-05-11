{
    config,
    pkgs,
    ...
}: {
  home = {
    homeDirectory = "/home/{USER}";

    packages = with pkgs; [
      bat
      chezmoi
      docker
      docker-compose
      fzf
      git
      gzip
      htop
      less
      neofetch
      neovim
      nix-direnv
      ripgrep
      ripgrep-all
      xdg-ninja
      unzip
      zip
      zsh
    ];

    stateVersion = "22.11";
    username = "{USER}";
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  programs.home-manager.enable = true;
}
