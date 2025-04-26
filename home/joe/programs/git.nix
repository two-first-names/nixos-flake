{ ... }:

{
  programs.git = {
    enable = true;
    userName = "Joe Roberts";
    userEmail = "joe@engiqueer.net";

    extraConfig = {
      init.defaultBranch = "main";
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingkey = "/home/joe/.ssh/id_ed25519_sk.pub";
    };
  };
}
