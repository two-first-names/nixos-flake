{ ... }:
{
  boot.initrd.luks.devices = {
    "luks-e7139a41-b427-474e-8b33-f8f6844d600b" = {
      device = "/dev/disk/by-uuid/e7139a41-b427-474e-8b33-f8f6844d600b";
      #crypttabExtraOpts = ["tpm2-device=auto" "tpm2-measure-pcr=yes"];
    };
  };
}
