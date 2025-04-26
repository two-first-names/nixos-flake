{ pkgs, ... }:

{
  xsession.windowManager.i3.config.keybindings = {
    "Mod4+Return" = "exec i3-sensible-terminal";
    "Mod4+Shift+q" = "kill";
    "Mod4+d" = "exec ${pkgs.dmenu}/bin/dmenu_run";

    "Mod4+Left" = "focus left";
    "Mod4+Down" = "focus down";
    "Mod4+Up" = "focus up";
    "Mod4+Right" = "focus right";

    "Mod4+Shift+Left" = "move left";
    "Mod4+Shift+Down" = "move down";
    "Mod4+Shift+Up" = "move up";
    "Mod4+Shift+Right" = "move right";

    "Mod4+h" = "split h";
    "Mod4+v" = "split v";
    "Mod4+f" = "fullscreen toggle";

    "Mod4+s" = "layout stacking";
    "Mod4+w" = "layout tabbed";
    "Mod4+e" = "layout toggle split";

    "Mod4+Shift+space" = "floating toggle";
    "Mod4+space" = "focus mode_toggle";

    "Mod4+a" = "focus parent";

    "Mod4+Shift+minus" = "move scratchpad";
    "Mod4+minus" = "scratchpad show";

    "Mod4+1" = "workspace number 1";
    "Mod4+2" = "workspace number 2";
    "Mod4+3" = "workspace number 3";
    "Mod4+4" = "workspace number 4";
    "Mod4+5" = "workspace number 5";
    "Mod4+6" = "workspace number 6";
    "Mod4+7" = "workspace number 7";
    "Mod4+8" = "workspace number 8";
    "Mod4+9" = "workspace number 9";
    "Mod4+0" = "workspace number 10";

    "Mod4+Shift+1" = "move container to workspace number 1";
    "Mod4+Shift+2" = "move container to workspace number 2";
    "Mod4+Shift+3" = "move container to workspace number 3";
    "Mod4+Shift+4" = "move container to workspace number 4";
    "Mod4+Shift+5" = "move container to workspace number 5";
    "Mod4+Shift+6" = "move container to workspace number 6";
    "Mod4+Shift+7" = "move container to workspace number 7";
    "Mod4+Shift+8" = "move container to workspace number 8";
    "Mod4+Shift+9" = "move container to workspace number 9";
    "Mod4+Shift+0" = "move container to workspace number 10";

    "Mod4+Shift+c" = "reload";
    "Mod4+Shift+r" = "restart";
    "Mod4+Shift+e" = "exec i3-nagbar -t warning -m 'Do you want to exit i3?' -b 'Yes' 'i3-msg exit'";

    "Mod4+r" = "mode resize";

    "XF86AudioMute" = "exec pamixer --toggle-mute";
    "XF86AudioLowerVolume" = "exec pamixer --decrease 4";
    "XF86AudioRaiseVolume" = "exec pamixer --increase 4";
    "XF86MonBrightnessDown" = "exec brightnessctl set 4%-";
    "XF86MonBrightnessUp" = "exec brightnessctl set 4%+";

    "Print" = "exec ${pkgs.flameshot}/bin/flameshot gui";
    "F9" = "exec ${pkgs.flameshot}/bin/flameshot gui";
  };
}
