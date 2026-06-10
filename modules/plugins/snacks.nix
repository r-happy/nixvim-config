{ lib, pkgs, ... }:

{
  extraPackages = [
    pkgs.chafa
  ];

  plugins.snacks = {
    enable = true;
    autoLoad = true;

    settings = {
      bigfile = {
        enabled = true;
      };

      explorer = {
        enabled = true;
        replace_netrw = true;
      };

      indent = {
        enabled = true;

        indent = {
          char = "┊";
          hl = "SnacksIndent";
        };

        scope = {
          enabled = true;
          char = "┊";
          underline = false;
          only_current = true;
        };

        chunk = {
          enabled = false;
        };
      };

      input = {
        enabled = true;
        win = {
          position = "float";
        };
      };

      notifier = {
        enabled = true;
        timeout = 3000;
      };

      picker = {
        enabled = true;

        sources = {
          explorer = {
            layout = {
              preset = "right";
            };

            win = {
              list = {
                keys = {
                  "<BS>" = "explorer_up";
                  "gs" = lib.nixvim.mkRaw ''
                    function()
                      Snacks.picker.lsp_symbols()
                    end
                  '';
                };
              };
            };
          };
        };
      };

      quickfile = {
        enabled = true;
      };

      scope = {
        enabled = true;
      };

      scroll = {
        enabled = false;
      };

      statuscolumn = {
        enabled = true;
      };

      words = {
        enabled = false;
      };

      terminal = {
        enabled = true;
        win = {
          style = "terminal";
        };
      };
    };
  };
}
