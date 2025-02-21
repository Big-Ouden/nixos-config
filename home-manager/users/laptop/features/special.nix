{ pkgs, config, ... }:

{
  home.file."mySuperCoolColorValuesFile.xml".text = ''
    <color1>${config.colorScheme.palette.base00}</color1>
    <color2>${config.colorScheme.palette.base05}</color2>
  '';
}
