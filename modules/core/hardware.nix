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
  };
  hardware.enableRedistributableFirmware = true;
 	opengl.enable = true;
  #Most wayland compositors need this
  nvidia.modesetting.enable = true;
  bluetooth.enable = true;
  pulseaudio.enable = false;

}