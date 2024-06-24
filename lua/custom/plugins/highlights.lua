return {
  {
    'brenoprata10/nvim-highlight-colors',
    event = 'VeryLazy',
    opts = {
      render = 'virtual',

      ---Set virtual symbol (requires render to be set to 'virtual')
      virtual_symbol = '●',
      virtual_symbol_position = 'eol',
      virtual_symbol_suffix = '',

      exclude_filetypes = { 'lazy' },
    },
  },
  {
    'echasnovski/mini.hipatterns',
    version = false,
    config = function()
      local hipatterns = require 'mini.hipatterns'
      hipatterns.setup {
        highlighters = {
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
          todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
          note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
        },
      }
    end,
  },
  {
    'echasnovski/mini.trailspace',
    version = false,
    opts = {},
  },
  {
    'tzachar/highlight-undo.nvim',
    opts = {},
  },
}
