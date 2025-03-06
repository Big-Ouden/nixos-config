{ inputs, pkgs, ...}:
{
    imports =[];

    programs.firefox = {
       enable = true;
       profiles.simon = {

          search.engines = {
            "Nix Packages" = {
              urls = [{
                template = "https://search.nixos.org/packages";
                params = [
                  { name = "type"; value = "packages"; }
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];

              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@np" ];
            };
          };
          search.force = true;




          extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
            bitwarden
            linkwarden
            ublock-origin
            sponsorblock
            darkreader
            #tridactyl
            youtube-shorts-block
            #languagetool
          ];

        };
    };



}
