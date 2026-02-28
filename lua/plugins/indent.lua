return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "·", -- dot style like your screenshot
    },
    whitespace = {
      highlight = { "Whitespace", "NonText" },
    },
    scope = {
      enabled = false,
    },
  },
}
