return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        transparent_mode = false,
        contrast = "hard",
        palette_overrides = {
          dark0_hard = "#000000",
        },
        overrides = {
          SignColumn = { bg = "#000000" },
          LineNr = { bg = "#000000" },
          CursorLineNr = { bg = "#000000", fg = "#fe8019" },
          WinSeparator = { fg = "#3c3836", bg = "#000000" },
          IblScope = { fg = "#fe8019" },
          IblIndent = { fg = "#282828" },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
