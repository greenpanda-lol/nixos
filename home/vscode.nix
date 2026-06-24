{ pkgs, ... }: {
    programs.vscode = {
        enable = true;

        extensions = with pkgs.vscode-extensions; [
            jdinhlife.gruvbox
            bbenoist.nix
        ];
    };
}
