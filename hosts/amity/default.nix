{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./audio.nix
    ./boot.nix
    ./etc.nix
    ./i18n.nix
    ./luks.nix
    ./packages.nix
    ./users.nix
    ./wifi.nix
    ./wireguard.nix
    ./x.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.rocmSupport = true;

  networking.hostName = "amity";

  system.stateVersion = "24.11";
}
