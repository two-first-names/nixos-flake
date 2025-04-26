{ pkgs, ... }:
{
  users.users.joe = {
    isNormalUser = true;
    description = "Joe Roberts";
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };
}
