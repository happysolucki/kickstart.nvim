-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- themes
  'shaunsingh/moonlight.nvim',
  'savq/melange-nvim',
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require('everforest').setup {
        -- Your config here
        background = 'hard',
        colours_override = function(palette)
          palette.bg0 = '#1A2024'
        end,
      }

      -- require("everforest").load()
    end,
  },
  {
    'mcchrish/zenbones.nvim',
    dependencies = { 'rktjmp/lush.nvim' },
    -- priority = 1000,
  },
  {
    'comfysage/evergarden',
    opts = {},
  },
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        -- optional configuration here
        style = 'multiplex',
      }
      -- require('bamboo').load()
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup()
      vim.cmd 'colorscheme duskfox'
    end,
  },
  -- {
  --   'comfysage/aki',
  --   opts = {
  --     contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
  --   }
  -- },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  -- file management
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
  },
  {
    'echasnovski/mini.pairs',
    version = false,
    config = function()
      require('mini.pairs').setup()
    end,
  },
  { 'echasnovski/mini.ai', version = false, opts = {} },
  { 'echasnovski/mini.surround', version = false, opts = {} },
  {
    'otavioschwanck/arrow.nvim',
    opts = {
      show_icons = true,
      leader_key = ';', -- Recommended to be a single key
    },
  },
  {
    'zbirenbaum/copilot.lua',
    event = 'VeryLazy',
    opts = {
      filetypes = { ['*'] = true },
    },
  },
  {
    'shellRaining/hlchunk.nvim',
    event = { 'UIEnter' },
    opts = {
      indent = { exclude_filetypes = { oil_preview = true, fzf = true } },
      blank = { enable = false },
      chunk = { notify = false, chars = { right_arrow = '─' } },
      line_num = { enable = false },
    },
  },
  -- guesses indent width on buffer open
  {
    'nmac427/guess-indent.nvim',
    opts = {},
  },
  {
    'yorickpeterse/nvim-window',
    keys = {
      { '<leader>wj', "<cmd>lua require('nvim-window').pick()<cr>", desc = 'nvim-window: Jump to window' },
    },
    config = true,
  },
}
