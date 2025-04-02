{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        (vaapiIntel.override { enableHybridCodec = true; })
        vaapiVdpau
        libvdpau-va-gl
      ];
    };
    bluetooth.enable = true;
 	  # graphics.enable = true;

    nvidia = {
      modesetting.enable = true;
      open = false;

      nvidiaSettings = true;

      prime = {
        sync.enable = true;
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };

    # nvidia.open = true;
    # nvidia.modesetting.enable = true;
    #Most wayland compositors need this
    enableRedistributableFirmware = true;
    opengl = {
      enable = true;
      # driSupport = true;
      # driSupport32bit = true;
    };
  };
 services.xserver.videoDrivers = ["nvidia"];

}
