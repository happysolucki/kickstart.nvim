return {
  'aktersnurra/no-clown-fiesta.nvim',
  'savq/melange-nvim',
  {
    'p00f/alabaster.nvim',
    -- config = function()
    --   vim.cmd.colorscheme 'alabaster'
    -- end,
  },
  {
    'neanias/everforest-nvim',
    -- config = function()
    --   require('everforest').setup {
    --     background = 'hard',
    --   }
    --   vim.cmd.colorscheme 'everforest'
    -- end,
  },
  {
    'sho-87/kanagawa-paper.nvim',
    opts = {},
  },
  { 'rose-pine/neovim', name = 'rose-pine' },
  {
    'comfysage/evergarden',
  },
  {
    'NTBBloodbath/sweetie.nvim',
    -- config = function()
    --   vim.cmd.colorscheme 'sweetie'
    -- end,
  },
  {
    'cdmill/neomodern.nvim',
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    -- config = function()
    --   vim.cmd.colorscheme 'campfire'
    -- end,
  },
  {
    'sainnhe/edge',
    -- config = function()
    --   vim.g.edge_style = 'neon'
    --   vim.o.background = 'dark'
    --   vim.cmd.colorscheme 'edge'
    -- end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme 'catppuccin-frappe'
    -- end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    -- config = function()
    --   vim.cmd.colorscheme 'kanagawa-dragon'
    -- end,
  },
}
