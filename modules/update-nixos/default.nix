{
  pkgs,
  lib,
  config,
  ...
}:

let
  flakePath = "/etc/nixos";
in
{
  system.autoUpgrade = {
    enable = true;
    flake = "${flakePath}#${config.networking.hostName}";
    flags = [
      "-L"
    ];
    dates = "hourly";
    persistent = true;
    randomizedDelaySec = "45min";
  };

  systemd.services.nixos-upgrade = {
    preStart = "${pkgs.host}/bin/host github.com";

    serviceConfig = {
      Restart = "on-failure";
      RestartSec = "120";
    };

    unitConfig = {
      StartLimitIntervalSec = 600;
      StartLimitBurst = 2;
    };

    after = [ "flake-update.service" ];
    wants = [ "flake-update.service" ];
  };

  systemd.services.flake-update = {
    preStart = "${pkgs.host}/bin/host github.com";

    unitConfig = {
      Description = "Update ${flakePath} flake.";
      StartLimitIntervalSec = 300;
      StartLimitBurst = 5;
    };

    serviceConfig = {
      Type = "oneshot";
      Restart = "on-failure";
      RestartSec = "30";
      ExecStart =
        let
          script = pkgs.writeShellApplication {
            name = "flake-update";
            runtimeInputs = with pkgs; [
              git
              nixos-rebuild
            ];
            text = ''
              git -C  ${flakePath} reset --hard HEAD
              git -C ${flakePath} pull
            '';
          };
        in
        lib.getExe script;
    };

    before = [ "nixos-upgrade.service" ];
  };

  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };

    # Also collect garbage if disk has less than 100MB free
    extraOptions = ''
      min-free = ${toString (100 * 1024 * 1024)}
      max-free = ${toString (2 * 1024 * 1024 * 1024)}
    '';
  };
}
