{ ... }:
{
  environment.etc = {
    "ssh/ca.pub" = {
      text = "";
    };
  };

  services.openssh.enable = true;
  services.openssh.extraConfig = ''

  '';
}
