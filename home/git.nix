{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "greenpanda-lol";
    userEmail = "180117139+greenpanda-lol@users.noreply.github.com";
  };
}