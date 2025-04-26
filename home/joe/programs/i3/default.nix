{ pkgs, ... }:

{
  imports = [
    ./keybindings.nix
    ./startup.nix
  ];

  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3;

    config = {

    };
  };
}
