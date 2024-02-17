return {

  -- NOTE: also see treesitter.lua for languages with improved syntax highlighting

  -- NOTE: colorschemes already installed in LazyVim: https://www.lazyvim.org/plugins/colorscheme

  -- set the colorscheme
  {
    "LazyVim/LazyVim",
    -- lazy = false,
    opts = {
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "tokyonight-day",
      colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "catppuccin-latte",
    },
  },
  {
    "catppuccin/nvim",
    -- lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavor = "mocha",
      transparent_background = true,
      integrations = {
        gitsigns = true,
        telescope = true,
        neogit = true,
        nvimtree = true,
        indent_blankline = true,
        dashboard = true,
        which_key = true,
        mini = true,
        harpoon = true,
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      -- other stuff
      background_colour = "#000000",
    },
  },
}
