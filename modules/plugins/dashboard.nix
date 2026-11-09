{
  plugins = {
    web-devicons.enable = true;

    snacks.settings.dashboard = {
      enabled = true;

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
      ];
    };
  };
}
