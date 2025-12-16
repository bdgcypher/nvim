return {
  {
    "sainnhe/everforest",
    lazy = false, -- load immediately
    priority = 1000, -- ensure it loads before other plugins
    config = function()
      -- Set background to dark
      vim.o.background = "dark"

      -- Optional: tweak Everforest settings
      vim.g.everforest_background = "hard" -- options: 'soft', 'medium', 'hard'
      vim.g.everforest_enable_italic = true
      vim.g.everforest_disable_italic_comment = false
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- load immediately
    priority = 1000, -- make sure it loads first
    config = function()
      -- Optional: tweak Kanagawa settings
      require("kanagawa").setup({
        compile = false, -- enable compiling for faster startup
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = { italic = true },
        transparent = false, -- set to true if you want transparency
        dimInactive = false, -- dim inactive windows
        theme = "wave", -- options: "wave", "dragon", "lotus"
        background = { -- map to background styles
          dark = "wave", -- use "wave" for dark mode
          light = "lotus", -- use "lotus" for light mode
        },
      })
    end,
  },
  {
    "rafamadriz/neon",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      -- Optional settings
      vim.g.neon_style = "default" -- options: 'default', 'doom', 'dark', etc.
      vim.g.neon_italic_comment = true
    end,
  },
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      -- Optional settings
      vim.g.edge_style = "aura" -- options: 'default', 'aura', 'neon'
      vim.g.edge_enable_italic = true
      vim.g.edge_disable_italic_comment = false
    end,
  },
  {
    "alexpasmantier/hubbamax.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
    end,
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      -- Optional: customize if plugin exposes settings
      -- (Kanso is minimal, so fewer options)
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"

      -- Optional tweaks
      vim.g.oxocarbon_lsp_borders = true
    end,
  },
}
