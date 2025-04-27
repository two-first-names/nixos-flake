{ ... }:
{
  imports = [
    ../hetzner
  ];

  networking.hostName = "lighthouse";
  networking.domain = "engiqueer";
}
