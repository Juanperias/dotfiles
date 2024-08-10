return {
  -- Adding catppuccin
  { "catppuccin/nvim", enable = true, name = "catppuccin", lazy = false, opts = { flavour = "mocha" } },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin"
    },
  }
}
