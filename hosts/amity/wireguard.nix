{ ... }:
{
  networking.firewall.enable = false;
  networking.wireguard.enable = true;
  networking.wireguard.interfaces.wg0 = {
    privateKeyFile = "/var/secrets/wg0.key";
    generatePrivateKeyFile = true;

    ips = [ "2a01:4f8:c013:b12f::2/64" ];
    listenPort = 51820;

    peers = [
      {
        publicKey = "mu7nEFV3SWOqfKT+KE0tN7cTAo1LRUyuHpGhe5g3Byw=";
        endpoint = "lighthouse.engiqueer.net:51820";
        allowedIPs = [ "::/0" ];
        persistentKeepalive = 25;
      }
    ];
  };
}
