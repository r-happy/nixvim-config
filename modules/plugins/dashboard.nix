{
  plugins = {
    web-devicons.enable = true;

    dashboard = {
      enable = true;

      settings = {
        theme = "doom";

        config = {
          header = [
            "         __                           "
            "   _____/ /_  ____ _____  ____  __  __"
            "  / ___/ __ \\/ __ `/ __ \\/ __ \\/ / / /"
            " / /  / / / / /_/ / /_/ / /_/ / /_/ / "
            "/_/  /_/ /_/\\__,_/ .___/ .___/\\__, /  "
            "                /_/   /_/    /____/   "
            ""
            ""
            ""
          ];

          center = [
            {
              icon = "  ";
              desc = "Find file";
              key = "f";
              key_format = " %s";
              action = "lua Snacks.picker.files()";
            }
            {
              icon = "  ";
              desc = "Recent files";
              key = "r";
              key_format = " %s";
              action = "lua Snacks.picker.recent()";
            }
            {
              icon = "  ";
              desc = "Grep files";
              key = "g";
              key_format = " %s";
              action = "lua Snacks.picker.grep()";
            }
            {
              icon = "  ";
              desc = "Explorer";
              key = "e";
              key_format = " %s";
              action = "lua Snacks.picker.explorer()";
            }
            {
              icon = "  ";
              desc = "Config";
              key = "c";
              key_format = " %s";
              action = "edit ~/github/nixvim-config/modules/plugins/dashboard.nix";
            }
            {
              icon = "  ";
              desc = "Quit";
              key = "q";
              key_format = " %s";
              action = "qa";
            }
          ];

          footer = [ "" ];

          vertical_center = true;
        };
      };
    };
  };
}
