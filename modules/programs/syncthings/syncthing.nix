{ inputs, pkgs, host, username, ... }:

{
  services.syncthing = {
    enable = true;
    settings = {
      devices = {
        "Kestrel-syncthing" = { id = "XVKXBS7-CEA2ZID-EJ3UCHN-TIUCINS-6S5VFQO-WONKRTM-6XALR5Q-DO7VPQL"; };
        "freya" = { id = "UUEWTKX-YDQCQJT-SS4VQ7K-7X5GGEC-2YCDWSX-V22445P-RX2NXEN-7TP5DQ5"; };
      };
      folders = {
        "vsuic-npafz" = {
          path = "/home/${username}/The_Brain";
          devices = [ "Kestrel-syncthing" "freya" ];
        };
      };
    };
  };
}