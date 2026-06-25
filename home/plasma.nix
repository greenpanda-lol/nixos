{ pkgs, ... }:
{
    programs.plasma = {
        enable = true;

        workspace = {
            lookAndFeel = "org.kde.breezedark.desktop";
            
            wallpaperSlideShow = {
                path = ../theme/wallpapers;
                interval = 300;
            };
        };
    };
}