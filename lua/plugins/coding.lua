-- stylua: ignore
return {

  -- =========================
  -- Mason
  -- =========================
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "angular-language-server",
        "prisma-language-server",
        "tailwindcss-language-server",
        "html-lsp",
        "css-lsp",
        "vtsls",
      },
    },
  },

  -- =========================
  -- LSP CONFIG
  -- =========================
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        tailwindcss = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },
        html = {},
        dartls = {},
        lua_ls = {
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                workspaceWord = true,
                callSnippet = "Both",
              },
              hint = {
                enable = true,
              },
              diagnostics = {
                disable = { "trailing-space" },
              },
              format = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },

  -- =========================
  -- TREESITTER (FIXED PROPERLY)
  -- =========================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "angular",
        "dart",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },

  -- =========================
  -- JSON EXTRA
  -- =========================
  { import = "lazyvim.plugins.extras.lang.json" },

  {
    "rafamadriz/friendly-snippets",
  },

  -- =========================
  -- LuaSnip
  -- =========================
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    keys = function()
      return {}
    end,
  },

  -- =========================
  -- Blink CMP
  -- =========================
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-n>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
    },
  },

}
