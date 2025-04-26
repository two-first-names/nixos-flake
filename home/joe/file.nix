{ ... }:
{
  home.file = {
    ".Xresources" = {
      enable = true;
      source = ./files/Xresources;
    };

    ".profile" = {
      enable = true;
      source = ./files/profile;
    };
  };
}
