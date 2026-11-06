let
  # Like VS Code, don't suggest words and snippets on their own while writing
  # prose. A manual <C-Space> still shows them.
  hideInProse.__raw = ''
    function(ctx)
      if ctx.trigger.initial_kind == "manual" then return true end
      if vim.tbl_contains({ "markdown", "text", "gitcommit" }, vim.bo[ctx.bufnr].filetype) then return false end
      if ctx.cursor[2] == 0 then return true end

      local ok, node = pcall(vim.treesitter.get_node, {
        bufnr = ctx.bufnr,
        pos = { ctx.cursor[1] - 1, ctx.cursor[2] - 1 },
      })
      if not ok or not node then return true end
      local node_type = node:type()
      return not (node_type == "jsx_text" or node_type:find("comment") or node_type:find("string"))
    end
  '';
in
{
  plugins = {
    friendly-snippets.enable = true;

    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;

      settings = {
        keymap = {
          preset = "super-tab";
          "<CR>" = [
            "accept"
            "fallback"
          ];
          "<C-f>" = [ "fallback" ];
          "<C-b>" = [ "fallback" ];
          "<C-d>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          "<C-u>" = [
            "scroll_documentation_up"
            "fallback"
          ];
        };

        appearance = {
          nerd_font_variant = "normal";
        };

        completion = {
          trigger = {
            show_on_backspace_in_keyword = true;
            show_on_x_blocked_trigger_characters = [
              "'"
              "\""
            ];
          };

          menu = {
            border = "rounded";
            direction_priority = [
              "s"
              "n"
            ];
          };

          list = {
            selection = {
              preselect = true;
              auto_insert = false;
            };
          };

          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;

            window = {
              border = "rounded";
              direction_priority = {
                menu_north = [
                  "e"
                  "w"
                ];
                menu_south = [
                  "e"
                  "w"
                ];
              };
            };
          };
        };

        signature = {
          enabled = true;
        };

        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];

          providers = {
            # Also replace the filename after the cursor, so that accepting in
            # ./mini-p|.nix does not produce mini-pairs.nix.nix.
            path.override.get_completions.__raw = ''
              function(self, ctx, callback)
                local tail = ctx.line:sub(ctx.cursor[2] + 1):match([[^[^%s/\\'"`:,;()%[%]{}<>=]*/?]])
                return self:get_completions(ctx, function(response)
                  for _, item in ipairs(response and response.items or {}) do
                    if #tail > 0 and item.textEdit.newText:sub(-#tail) == tail then
                      -- blink shares one range table between all items
                      local range = vim.deepcopy(item.textEdit.range)
                      range["end"].character = ctx.cursor[2] + #tail
                      item.textEdit.range = range
                    end
                  end
                  callback(response)
                end)
              end
            '';

            buffer = {
              min_keyword_length = 2;
              should_show_items = hideInProse;
              # Unspaced Japanese is a single "word" to blink, so whole sentences
              # would become candidates.
              transform_items.__raw = ''
                function(_, items)
                  return vim.tbl_filter(function(item) return not item.label:find("[\128-\255]") end, items)
                end
              '';
            };

            snippets = {
              should_show_items = hideInProse;
              opts = {
                extended_filetypes = {
                  htmlangular = [ "html" ];
                };
              };
            };
          };
        };

        fuzzy = {
          implementation = "prefer_rust_with_warning";
          # The default allows typos, which matches unrelated words.
          max_typos = 0;
          sorts = [
            "exact"
            "score"
            "sort_text"
          ];
        };
      };
    };
  };
}
