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
    pulseaudio.enable = false;
 	  opengl.enable = true;
    nvidia.modesetting.enable = true;
    #Most wayland compositors need this
    enableRedistributableFirmware = true;
  };

}