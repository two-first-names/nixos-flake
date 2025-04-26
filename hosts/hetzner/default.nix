{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../servers/sshd
    ../../servers/users
    ../../lib/pull-nixos
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  security.sudo.wheelNeedsPassword = false;

  environment.systemPackages = with pkgs; [
    git
  ];

  system.stateVersion = "24.11";
}
