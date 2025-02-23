{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
      "8.8.4.4"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        8384 # syncthing port
        # 59010
        # 59011
      ];
      allowedUDPPorts = [
        # 59010
        # 59011
        8384 # syncthing port

      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}