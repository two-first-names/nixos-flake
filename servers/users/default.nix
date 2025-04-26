{ ... }:
{
  users.users.admin = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIAjv+7FOxA7TdaSovoXfXWSDTeIXlr1GMJ7nw8cmAX2aAAAABHNzaDo="
    ];
    openssh.authorizedPrincipals = [ "admin" ];
  };
}
