{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nwg-look
    ngrok
    foot
    zig
    protonvpn-gui
    flameshot
    stdenv.cc.cc.lib
    wayland
    wayland.dev
    libudev0-shim
    hplip
    pfetch
    eww
    cava
    fastfetch
    playerctl
  ];
}
