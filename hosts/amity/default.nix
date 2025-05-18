{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/update-nixos

    ./audio.nix
    ./boot.nix
    ./etc.nix
    ./i18n.nix
    ./luks.nix
    ./packages.nix
    ./pam.nix
    ./tls.nix
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

  boot.binfmt.emulatedSystems = [ "aarch64-linux" ];

  system.stateVersion = "24.11";
}
