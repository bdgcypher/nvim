return {
  "max397574/colortils.nvim",
  cmd = "Colortils", -- lazy-load when you run :Colortils
  config = function()
    require("colortils").setup({
      -- Default options from the repo
      register = "+", -- clipboard register
      preview = " %s", -- preview string
      default_format = "hex", -- hex, hsl, rgb
      default_color = "#000000",
      border = "rounded",

      -- Keymaps inside the floating window
      mappings = {
        increment = "l",
        decrement = "h",
        increment_big = "L",
        decrement_big = "H",
        min_value = "0",
        max_value = "$",
        set_register_default = "<CR>",
        set_register_choose = "g<CR>",
        replace_default = "<M-CR>",
        replace_choose = "g<M-CR>",
        export = "E",
        set_value = "c",
        transparency = "T",
        choose_background = "B",
        quit = "q",
      },
    })
  end,
}
