{ ... }: {
    programs.kitty = {
        enable = true;

        settings = {
            background_opacity = 0.5;
            confirm_os_window_close = 0;
            font_family = "JetBrains Mono";
            dynamic_background_opacity = true;
        };

        extraConfig = ''
            include ${../theme/kitty.conf}
        '';
    };
}
