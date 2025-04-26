{ pkgs, ... }:
{
  systemd.services.pull-nixos = {
    enable = true;

    unitConfig = {
      Description = "Pull /etc/nixos repository.";
      After = "network.target";
    };

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.git}/bin/git -C /etc/nixos pull";
    };
  };

  systemd.timers.pull-nixos = {
    enable = true;

    timerConfig = {
      OnCalendar = "hourly";
    };
  };
}
