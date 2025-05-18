{ ... }:
{
  security.pam.services = {
    login.u2fAuth = true;
    ly.u2fAuth = true;
    sudo.u2fAuth = true;
  };
}
