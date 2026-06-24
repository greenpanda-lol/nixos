{ config, pkgs, ... }:
{
    programs.zsh = {
        enable = true;

        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        history.size = 10000;

        shellAliases = {
            "?u" = "sudo nixos-rebuild switch";
        };

        oh-my-zsh = {
            enable = true;

            plugins = [
                "git"
                "sudo"
            ];
        };
    };
}