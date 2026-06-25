{ pkgs, ... }:
{
    home.file.".local/share/color-schemes/GruvboxColors.colors".source = ../theme/GruvboxColors.colors;

    programs.plasma = {
        enable = true;

        workspace = {
            lookAndFeel = "org.kde.breezedark.desktop";
            colorScheme = "GruvboxColors";
            
            wallpaperSlideShow = {
                path = ../theme/wallpapers;
                interval = 300;
            };
        };

        panels = [
            {
                location = "bottom";

                widgets = [
                    {
                        kickoff = {
                            icon = "nix-snowflake-white";
                        };
                    }

                    "org.kde.plasma.pager"

                    {
                        iconTasks = {
                            launchers = [
                                "applications:org.kde.dolphin.desktop"
                                "applications:brave-browser.desktop"
                                "applications:code.desktop"
                                "applications:kitty.desktop"
                            ];
                        };
                    }

                    
                    "org.kde.plasma.systemtray"
                    "org.kde.plasma.digitalclock"
                ];
            }
        ];
    };
}