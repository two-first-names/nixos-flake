{ ... }:
{
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
    displayManager.gdm.enable = true;
  };

  services.displayManager = {
    defaultSession = "none+i3";
  };
}
