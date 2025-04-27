{ pkgs, ... }:

{
  xsession.windowManager.i3.config.startup = [
    { command = "setxkbmap -layout gb"; }
    { command = "--no-startup-id i3-msg 'workspace 1; append_layout /home/joe/.i3/workspace-1.json'"; }
    { command = "--no-startup-id i3-msg 'workspace 2; append_layout /home/joe/.i3/workspace-2.json'"; }
    { command = "--no-startup-id i3-msg 'workspace 3; append_layout /home/joe/.i3/workspace-3.json'"; }
    { command = "--no-startup-id i3-msg 'workspace 1'"; }

    { command = "${pkgs.zed-editor}/bin/zeditor"; }
    { command = "${pkgs.firefox}/bin/firefox"; }
    { command = "${pkgs.signal-desktop}/bin/signal-desktop"; }
    { command = "${pkgs.discord}/bin/discord"; }
    { command = "${pkgs.slack}/bin/slack"; }
  ];
}
