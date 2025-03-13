{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "192.168.1.215"
      "1.1.1.1"
      "8.8.8.8"
      "8.8.4.4"
    ];
    search= [
      "homelab.lan"
      "bigouden.org"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        8384 # syncthing port
        6000
        # 59010
        # 59011
      ];
      allowedUDPPorts = [
        # 59010
        # 59011
        8384 # syncthing port
        6000
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
