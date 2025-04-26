{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;

    extraPackages = [
      pkgs.nil
      pkgs.nixd
      pkgs.nixfmt-rfc-style
    ];

    extensions = [ "nix" ];

    userSettings = {
      autosave = "on_focus_change";
      hourFormat = "hour24";
      autoUpdate = false;

      lsp = {
        nix = {
          binary = {
            path_lookup = true;
          };
        };

        nil = {
          initialization_options = {
            formatting = {
              command = ["nixfmt"];
            };
          };
        };
      };

      theme = {
        mode = "dark";
        dark = "One Dark";
        light = "One Light";
      };
    };
  };
}
