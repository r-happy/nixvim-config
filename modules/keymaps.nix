{ lib, ... }:

let
  raw = lib.nixvim.mkRaw;
in
{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil<cr>";
      options.desc = "Open Oil";
    }

    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>Markview toggle<cr>";
      options.desc = "Toggle Markdown view";
    }

    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>TSJToggle<cr>";
      options.desc = "Toggle syntax node split/join";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>tn";
      action = "<cmd>TermNew<cr>";
      options.desc = "Terminal: New";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>tx";
      action = "<cmd>TermClose<cr>";
      options.desc = "Terminal: Close Current";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>t[";
      action = "<cmd>TermPrev<cr>";
      options.desc = "Terminal: Previous";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>t]";
      action = "<cmd>TermNext<cr>";
      options.desc = "Terminal: Next";
    }

    {
      mode = "n";
      key = "sf";
      action = raw "function() Snacks.picker.files() end";
      options.desc = "picker file";
    }

    {
      mode = "n";
      key = "sm";
      action = raw "function() Snacks.picker.smart() end";
      options.desc = "picker smart";
    }

    {
      mode = "n";
      key = "se";
      action = raw "function() Snacks.picker.explorer() end";
      options.desc = "picker explorer";
    }

    {
      mode = "n";
      key = "spr";
      action = raw "function() Snacks.picker.recent() end";
      options.desc = "picker recent files";
    }

    {
      mode = "n";
      key = "spg";
      action = raw "function() Snacks.picker.grep() end";
      options.desc = "grep files";
    }

    {
      mode = "n";
      key = "spc";
      action = raw "function() Snacks.picker.commands() end";
      options.desc = "picker commands";
    }

    {
      mode = "n";
      key = "sph";
      action = raw "function() Snacks.picker.command_history() end";
      options.desc = "picker command history";
    }

    {
      mode = "n";
      key = "gd";
      action = raw "function() Snacks.picker.lsp_definitions() end";
      options.desc = "move define";
    }

    {
      mode = "n";
      key = "spl";
      action = raw ''
        function()
          local actions = {
            { "Definitions", Snacks.picker.lsp_definitions },
            { "Implementations", Snacks.picker.lsp_implementations },
            { "Symbols", Snacks.picker.lsp_symbols },
            { "References", Snacks.picker.lsp_references },
            { "Type Definition", Snacks.picker.lsp_type_definitions },
          }

          vim.ui.select(actions, {
            prompt = "LSP Actions:",
            format_item = function(item)
              return item[1]
            end,
          }, function(choice)
            if choice then
              choice[2]()
            end
          end)
        end
      '';
      options.desc = "LSP Action Picker";
    }

    {
      mode = "n";
      key = "<Enter>";
      action = raw ''function() require("flash").jump() end'';
      options.desc = "Flash";
    }

    {
      mode = "n";
      key = "K";
      action = raw "function() vim.lsp.buf.hover() end";
      options.desc = "LSP Hover";
    }

    {
      mode = "n";
      key = "sg";
      action = raw "function() Snacks.lazygit() end";
      options.desc = "Snacks: LazyGit";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-\\>";
      action = "<cmd>TermToggle<cr>";
      options.desc = "Terminal: Toggle";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-¥>";
      action = "<cmd>TermToggle<cr>";
      options.desc = "Terminal: Toggle";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-@>";
      action = "<cmd>TermToggle<cr>";
      options.desc = "Terminal: Toggle";
    }

    {
      mode = [
        "n"
        "t"
      ];
      key = "<Nul>";
      action = "<cmd>TermToggle<cr>";
      options.desc = "Terminal: Toggle";
    }
  ];
}
