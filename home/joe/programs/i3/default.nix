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
      assigns = {
        "1" = [
          { class = "dev.zed.Zed"; }
        ];
        "3" = [
          { class = "discord"; }
          { class = "signal"; }
          { class = "slack"; }
        ];
      };
    };
  };
}
