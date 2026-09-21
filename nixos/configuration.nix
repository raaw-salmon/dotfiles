{ config, lib, pkgs, ... }:

{
  imports = [ <nixos-wsl/modules> ];

  wsl.enable = true;
  #wsl.defaultUser = "nixos";

  wsl.defaultUser = "ramon";
 
  users.users.ramon = {
    isNormalUser = true;
    description = "Ramon";
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
    ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    figlet
    cbonsai
    git
    wget
    python314
    fish
    direnv
    nix-direnv
    nixfmt
    nodejs
    gcc
    tmux
    eza
    typst
    cargo
    rustc
    fd
    ripgrep
    gcc
  ];


  fonts.packages = with pkgs; [ source-sans-pro barlow cm_unicode dejavu_fonts];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      direnv hook fish | source
    '';
  };
  services.nginx.enable = true;
  system.stateVersion = "26.05";
}

