{ ... }:
{
  services.libinput.enable = true;
  services.libinput.touchpad.naturalScrolling = true;

  services.xserver = {
    enable = true;
    exportConfiguration = true;
    windowManager.i3.enable = true;
  };

  services.displayManager.ly.enable = true;

  services.displayManager = {
    defaultSession = "none+i3";
  };
}
