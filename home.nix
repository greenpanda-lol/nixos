{ config, pkgs, inputs, ... }:

{
    home.username = "nimrod";
    home.homeDirectory = "/home/nimrod";
    home.stateVersion = "25.05";

    imports = [
        inputs.plasma-manager.homeModules.plasma-manager
        ./home/plasma.nix
        ./home/vscode.nix
        ./home/kitty.nix
        ./home/zsh.nix
        ./home/git.nix
    ];

    home.packages = with pkgs; [
        brave
        fastfetch
        hollywood
        cmatrix
        pipes
        asciiquarium
        btop
    ];

    programs.home-manager.enable = true;
    programs.starship.enable = true;
}
