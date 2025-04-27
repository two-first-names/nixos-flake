{ pkgs, lib, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/sshd
    ../../modules/users
    ../../modules/update-nixos
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.settings.trusted-users = [ "admin" ];

  networking.hostName = lib.mkDefault "hetzner";
  system.activationScripts.reload-hostname = {
    text = ''
      hostname -F /etc/hostname
    '';
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  security.sudo.wheelNeedsPassword = false;

  environment.systemPackages = with pkgs; [
    git
  ];

  system.stateVersion = "24.11";
}
