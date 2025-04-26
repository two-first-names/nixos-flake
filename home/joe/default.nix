{ ... }:

{
  imports = [
    ./file.nix
    ./packages.nix

    ./programs
  ];

  home.username = "joe";
  home.homeDirectory = "/home/joe";

  home.stateVersion = "24.11";

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
