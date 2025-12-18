return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {

    user_default_options = {
      names = true,
      rgb = true,
      RRGGBB = true,
      RRGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
      tailwind = "both", -- or "normal"
    },
  },
}
