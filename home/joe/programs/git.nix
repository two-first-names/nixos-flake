{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      init.defaultBranch = "main";
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingkey = "/home/joe/.ssh/id_ed25519_sk.pub";
      user.name = "Joe Roberts";
      user.email = "joe@engiqueer.net";
    };
  };
}
