return {
  -- Add Evergarden Theme as Default
  {
    "everviolet/nvim",
    name = "evergarden",
    lazy = false,
    priority = 1000,
    config = function()
      require("evergarden").setup({
        theme = {
          variant = "winter",
          accent = "red",
        },
        editor = {
          transparent_background = false,
          sign = { color = "none" },
          float = { color = "mantle", solid_border = true },
          completion = { color = "surface0" },
        },
        integrations = {
          blink_cmp = true,
          cmp = true,
          fzf_lua = true,
          gitsigns = true,
          indent_blankline = { enable = true, scope_color = "red" },
          mini = {
            enable = true,
            animate = true,
            clue = true,
            completion = true,
            cursorword = true,
            deps = true,
            diff = true,
            files = true,
            hipatterns = true,
            icons = true,
            indentscope = true,
            jump = true,
            jump2d = true,
            map = true,
            notify = true,
            operators = true,
            pick = true,
            starters = true,
            statusline = true,
            surround = true,
            tabline = true,
            test = true,
            trailspace = true,
          },
          nvimtree = true,
          rainbow_delimiters = true,
          symbols_outline = true,
          telescope = true,
          which_key = true,
          neotree = true,
        },
      })

      -- Set Evergarden as the active theme
      vim.cmd.colorscheme("evergarden")

      -- Set Snacks.nvim indent colors
      vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#dd8585" }) -- Add Evergarden red accent for current scope
      vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#444444" }) -- muted gray for normal indent lines
    end,
  },
}
