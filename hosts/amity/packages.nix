{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    brightnessctl
    git
    pavucontrol
    pamixer
    bluez
    bluez-tools
    tpm2-tss
    wireguard-tools

    rocmPackages.rocm-smi
  ];

  programs.zsh.enable = true;
}
