{
  plugins = {
    web-devicons.enable = true;

    snacks.settings.dashboard = {
      enabled = true;

      preset.keys = [
        {
          icon = " ";
          desc = "Find file";
          key = "f";
          action = ":lua Snacks.picker.files()";
        }
        {
          icon = " ";
          desc = "Recent files";
          key = "r";
          action = ":lua Snacks.picker.recent()";
        }
        {
          icon = " ";
          desc = "Grep files";
          key = "g";
          action = ":lua Snacks.picker.grep()";
        }
        {
          icon = " ";
          desc = "Explorer";
          key = "e";
          action = ":lua Snacks.picker.explorer()";
        }
        {
          icon = " ";
          desc = "Quit";
          key = "q";
          action = ":qa";
        }
      ];

      sections = [
        # Pre-rendered from a photo: 60x52 pixels drawn as truecolor half blocks.
        {
          section = "terminal";
          cmd = "cat ${./dashboard-dog.ansi}";
          width = 60;
          height = 26;
          padding = 2;
          # Leave room for the keys on short terminals.
          enabled.__raw = "function() return vim.o.lines >= 41 end";
        }
        {
          section = "keys";
          gap = 1;
        }
      ];
    };
  };
}
