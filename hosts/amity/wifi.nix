{ ... }:
{
  networking.wireless = {
    enable = true;
    userControlled.enable = true;
    secretsFile = "/var/secrets/wireless.conf";
    networks = {
      Atlantis.pskRaw = "ext:psk_atlantis";
      "Wi-Fi Guest".pskRaw = "ext:psk_2circlesquare";
      VM8264692.pskRaw = "ext:psk_2ds";
    };
  };
}
