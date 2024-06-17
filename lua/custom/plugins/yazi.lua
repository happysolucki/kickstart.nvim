---@type LazySpec
return {
  ---@type LazyPlugin
  {
    'mikavilpas/yazi.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    event = 'VeryLazy',
    keys = {
      {
        '-',
        function()
          require('yazi').yazi()
        end,
        desc = 'Open the file manager',
      },
      {
        '<leader>cw',
        function()
          require('yazi').yazi(nil, vim.fn.getcwd())
        end,
        desc = 'Open the file manager in the cwd',
      },
    },
    ---@type YaziConfig
    opts = {
      open_for_directories = true,
      -- log_level = vim.log.levels.DEBUG,
      -- integrations = {
      --   grep_in_directory = function(directory)
      --     require("my-telescope-searches").my_live_grep({ cwd = directory })
      --   end,
      -- },
    },
  },
  -- {
  --   'mikavilpas/yazi.nvim',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --   },
  --   event = 'VeryLazy',
  --   keys = {
  --     -- 👇 in this section, choose your own keymappings!
  --     {
  --       '<leader>-',
  --       function()
  --         require('yazi').yazi()
  --       end,
  --       desc = 'Open the file manager',
  --     },
  --     {
  --       -- Open in the current working directory
  --       '<leader>cw',
  --       function()
  --         require('yazi').yazi(nil, vim.fn.getcwd())
  --       end,
  --       desc = "Open the file manager in nvim's working directory",
  --     },
  --   },
  --   ---@type YaziConfig
  --   opts = {
  --     open_for_directories = true,
  --   },
  -- },
}
