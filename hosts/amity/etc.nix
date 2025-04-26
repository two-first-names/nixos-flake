{ ... }:
{
  environment.etc = {
    "X11/xorg.conf.d/30-touchpad.conf" = {
      source = ./files/touchpad.conf;
      mode = "0440";
    };
  };
}
