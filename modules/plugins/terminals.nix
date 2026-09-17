{ pkgs, terminalsNvim, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "terminals.nvim";
      version = "git";
      src = terminalsNvim;
    })
  ];

  extraConfigLua = ''
    require("terminals").setup({
      position = "bottom",
    })

    vim.api.nvim_set_hl(0, "TermBar", { link = "WinBar", default = true })
    vim.api.nvim_set_hl(0, "TermBarNC", { link = "WinBarNC", default = true })
    vim.api.nvim_set_hl(0, "TermBarName", { link = "Comment", default = true })
    vim.api.nvim_set_hl(0, "TermBarNameActive", { link = "Title", default = true })
    vim.api.nvim_set_hl(0, "TermBarNameFocused", { link = "IncSearch", default = true })
    vim.api.nvim_set_hl(0, "TermBarStatus", { link = "DiagnosticError", default = true })
    vim.api.nvim_set_hl(0, "TermBarAttention", { link = "DiagnosticWarn", default = true })
  '';
}
