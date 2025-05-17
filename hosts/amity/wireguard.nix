{ ... }:
{
  networking.firewall.enable = false;
  networking.wireguard.enable = true;
  networking.nameservers = [ "2a01:4b00:d203:8d02::53" ];
  networking.wireguard.interfaces.wg0 = {
    privateKeyFile = "/var/secrets/wg0.key";
    generatePrivateKeyFile = true;

    ips = [ "2a01:4f8:c013:b12f::2/64" "2a01:4b00:d203:8d11::2/64" ];
    listenPort = 51820;

    peers = [
      {
        publicKey = "ksStSp2HSrz6HR2iRfVnRYiK93HD6e+oL0D8qx8ULkM=";
        endpoint = "91.99.91.0:51820";
        allowedIPs = [ "::/0" ];
        persistentKeepalive = 25;
      }
    ];
  };
}
