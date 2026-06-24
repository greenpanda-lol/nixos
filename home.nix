{ config, pkgs, ... }:

{
    home.username = "nimrod";
    home.homeDirectory = "/home/nimrod";
    home.stateVersion = "25.05";

    imports = [
        ./home/vscode.nix
        ./home/kitty.nix
        ./home/zsh.nix
        ./home/git.nix
    ];

    home.packages = with pkgs; [
        brave
        fastfetch
    ];

    programs.home-manager.enable = true;
    programs.starship.enable = true;
}
