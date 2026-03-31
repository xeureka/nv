return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        transparent_mode = false, -- Set to true if you want your terminal's background to show through
        contrast = "hard",
        palette_overrides = {
          dark0_hard = "#000000", -- This forces the main background to pure black
        },
        overrides = {
          -- This ensures the line number column and sign column are also black
          SignColumn = { bg = "#000000" },
          LineNr = { bg = "#000000" },
          CursorLineNr = { bg = "#000000", fg = "#fe8019" },
          -- Makes the vertical split lines cleaner
          WinSeparator = { fg = "#3c3836", bg = "#000000" },
          -- Keep your block indicators visible
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
