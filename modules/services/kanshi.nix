{ inputs, pkgs, ... }:
{
  services.kanshi = {
    enable = true;
    systemdTarget = "hyprland-session.target";

    profiles = {
      undocked = {
        outputs = [
          {
            criteria = "eDP-1";
            scale = 1.1;
            status = "enable";
          }
        ];
      };

      docked = {
        outputs = [
          {
            criteria = "HP Inc. HP E24 G5 CN432610PX";
            position = "0,0";
            mode = "1920x1080@74.97Hz";
          }
          {
            criteria = "LG Electronics LG FULL HD 112MAKRE9K81";
            position = "1920,0";
            mode = "1920x1080@60.00Hz";
          }
          {
            criteria = "eDP-1";
            status = "disable";
          }
        ];
      };
    };
  };
}
