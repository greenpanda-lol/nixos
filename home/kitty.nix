{ ... }: {
    programs.kitty = {
        enable = true;

        settings = {
            background_opacity = 0.75;
            confirm_os_window_close = 0;
            font_family = "JetBrains Mono";
            dynamic_background_opacity = true;
            background_blur = 20;
        };

        extraConfig = ''
            include ${../theme/kitty.conf}
        '';
    };
}
