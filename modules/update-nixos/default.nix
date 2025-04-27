{ pkgs, lib, ... }:
{
  systemd.services.update-nixos = {
    enable = true;

    unitConfig = {
      Description = "Pull /etc/nixos repository.";
      After = "network.target";
    };

    serviceConfig = {
      Type = "oneshot";
      ExecStart =
        let
          script = pkgs.writeShellApplication {
            name = "update-nixos";
            runtimeInputs = with pkgs; [
              git
              nixos-rebuild
            ];
            text = ''
              git -C /etc/nixos reset --hard HEAD
              git -C /etc/nixos pull
              nixos-rebuild switch
            '';
          };
        in
        lib.getExe script;
    };
  };

  systemd.timers.pull-nixos = {
    enable = true;

    timerConfig = {
      OnCalendar = "hourly";
    };
  };
}
