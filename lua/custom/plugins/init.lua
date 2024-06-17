-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'echasnovski/mini.statusline', version = false, opts = {} },
  { 'echasnovski/mini.pairs', version = false, opts = {} },
  {
    'echasnovski/mini.ai',
    version = false,
    config = function()
      local spec_treesitter = require('mini.ai').gen_spec.treesitter
      require('mini.ai').setup {
        custom_textobjects = {
          F = spec_treesitter { a = '@function.outer', i = '@function.inner' },
          o = spec_treesitter {
            a = { '@conditional.outer', '@loop.outer' },
            i = { '@conditional.inner', '@loop.inner' },
          },
        },
      }
    end,
  },
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
  --   'shellRaining/hlchunk.nvim',
  --   event = { 'UIEnter' },
  --   opts = {
  --     indent = { exclude_filetypes = { oil_preview = true, fzf = true } },
  --     blank = { enable = false },
  --     chunk = { notify = false, chars = { right_arrow = '─' } },
  --     line_num = { enable = false },
  --   },
  -- },
  -- guesses indent width on buffer open
  {
    'nmac427/guess-indent.nvim',
    opts = {},
  },
  -- {
  --   'yorickpeterse/nvim-window',
  --   keys = {
  --     { '<leader>wj', "<cmd>lua require('nvim-window').pick()<cr>", desc = 'nvim-window: Jump to window' },
  --   },
  --   config = true,
  -- },
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
    opts = {},
    keys = {
      { '<leader>rn', mode = 'n', ':IncRename ', desc = '[R]e[N]ame' },
    },
  },
  -- {
  --   'utilyre/barbecue.nvim',
  --   name = 'barbecue',
  --   version = '*',
  --   dependencies = {
  --     'SmiteshP/nvim-navic',
  --     'nvim-tree/nvim-web-devicons', -- optional dependency
  --   },
  --   opts = {
  --     -- configurations go here
  --   },
  -- },
}
