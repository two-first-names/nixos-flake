{ ... }:

{
  programs.zsh = {
    enable = true;

    profileExtra = ''
      [[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
    '';

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "ssh"
        "ssh-agent"
      ];
    };
  };
}
