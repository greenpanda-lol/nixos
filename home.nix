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
        hollywood
        cmatrix
        pipes
        asciiquarium
        btop
        jetbrains-mono
        niri
        fuzzel
        swaybg
        wl-clipboard
        inputs.kwin-effect-glass.packages.${pkgs.system}.default
        python314
        uv
    ];

    programs.home-manager.enable = true;
    programs.starship.enable = true;
    programs.fastfetch.enable = true;

    xdg.configFile."fastfetch/config.jsonc".source = ./theme/fastfetch.jsonc;

    home.file = {
        "/home/nimrod/Wallpapers" = {
            source = inputs.gruvbox-wallpapers.packages."${pkgs.stdenv.hostPlatform.system}".default;
            recursive = true;
        };
    };
}
