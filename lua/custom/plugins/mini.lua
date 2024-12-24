return {
  {
    'echasnovski/mini.misc',
    version = false,
    config = function()
      require('mini.misc').setup {}
      MiniMisc.setup_auto_root()
    end,
  },
  -- {
  --   'echasnovski/mini.hues',
  --   version = false,
  --   opts = {
  --     -- background = '#112527',
  --     -- background = '#1f2b29',
  --     -- background = '#2b1f23',
  --     background = '#1f272b',
  --     -- background = '#30252b',
  --     foreground = '#c0c9c7',
  --     saturation = 'low',
  --     n_hues = 6,
  --   },
  -- },
  {
    'echasnovski/mini.files',
    version = false,
    config = function()
      require('mini.files').setup {}
      local open_files = function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0))
      end
      vim.keymap.set('n', '-', open_files, { desc = 'View files' })
    end,
  },
  {
    'echasnovski/mini.icons',
    opts = {},
    lazy = true,
    specs = {
      { 'nvim-tree/nvim-web-devicons', enabled = false, optional = true },
    },
    init = function()
      package.preload['nvim-web-devicons'] = function()
        require('mini.icons').mock_nvim_web_devicons()
        return package.loaded['nvim-web-devicons']
      end
    end,
  },
}
