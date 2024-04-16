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
    -- priority = 1000, -- make sure to load this before all the other start plugins
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
    -- lazy = false,
    -- priority = 1000,
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
  { 'echasnovski/mini.pairs', version = false, opts = {} },
  { 'echasnovski/mini.ai', version = false, opts = {} },
  -- { 'echasnovski/mini.surround', version = false, opts = {} },
  -- {
  --   'otavioschwanck/arrow.nvim',
  --   opts = {
  --     show_icons = true,
  --     -- leader_key = ';', -- Recommended to be a single key
  --     leader_key = 'm', -- Recommended to be a single key
  --   },
  -- },
  -- {
  --   'zbirenbaum/copilot.lua',
  --   event = 'VeryLazy',
  --   opts = {
  --     filetypes = { ['*'] = true },
  --   },
  -- },
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
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    'smjonas/inc-rename.nvim',
    config = function()
      require('inc_rename').setup()
      vim.keymap.set('n', '<leader>rn', function()
        return ':IncRename ' .. vim.fn.expand '<cword>'
      end, { expr = true })
    end,
  },
}
