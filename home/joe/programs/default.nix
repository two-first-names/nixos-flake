{ ... }:
{
  imports = [
    ./i3

    ./git.nix
    ./thunderbird.nix
    ./zed.nix
    ./zsh.nix
  ];

  programs = {
    home-manager.enable = true;
    firefox.enable = true;
    fuzzel.enable = true;
    hyfetch.enable = true;
    kitty.enable = true;
    vim.enable = true;
  };
}
