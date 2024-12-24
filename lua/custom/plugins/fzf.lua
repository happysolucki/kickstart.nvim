local icons = require 'custom.icons'

return {
  'ibhagwan/fzf-lua',
  event = 'VeryLazy',
  cmd = 'FzfLua',
  keys = {
    { '<leader>f<', '<cmd>FzfLua resume<cr>', desc = 'Resume last command' },
    { '<leader>fc', '<cmd>FzfLua highlights<cr>', desc = 'highlights' },
    { '<leader>fd', '<cmd>FzfLua lsp_document_diagnostics<cr>', desc = 'document diagnostics' },
    { '<leader>fD', '<cmd>FzfLua lsp_workspace_diagnostics<cr>', desc = 'workspace diagnostics' },
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'find files' },
    { '<leader>fg', '<cmd>FzfLua live_grep_glob<cr>', desc = 'grep' },
    { '<leader>fg', '<cmd>FzfLua grep_visual<cr>', desc = 'grep', mode = 'x' },
    { '<leader>fh', '<cmd>FzfLua helptags<cr>', desc = 'help' },
  },
  opts = {
    winopts = {
      height = 0.7,
      width = 0.55,
      preview = {
        scrollbar = false,
        layout = 'vertical',
        vertical = 'up:40%',
      },
    },
    global_git_icons = false,
    -- Configuration for specific commands.
    files = {
      winopts = {
        preview = { hidden = 'hidden' },
      },
    },
    grep = {
      header_prefix = icons.misc.search .. ' ',
    },
    -- helptags = {
    --   actions = {
    --     -- Open help pages in a vertical split.
    --     ['default'] = actions.help_vert,
    --   },
    -- },
    lsp = {
      symbols = {
        symbol_icons = icons.symbol_kinds,
      },
    },
    oldfiles = {
      include_current_session = true,
      winopts = {
        preview = { hidden = 'hidden' },
      },
    },
  },
  -- config = function()
  --   require('fzf-lua').setup { 'telescope' }
  --   -- vim.keymap.set('n', '<leader>gf', function()
  --   --   require('fzf-lua').git_files()
  --   -- end, { desc = 'Search [G]it [F]iles' })
  --   vim.keymap.set('n', '<leader><space>', function()
  --     require('fzf-lua').buffers()
  --   end, { desc = '[ ] Find existing buffers' })
  --   vim.keymap.set('n', '<leader>?', function()
  --     require('fzf-lua').oldfiles()
  --   end, { desc = '[?] Find recently opened files' })
  --   -- vim.keymap.set('n', '<leader>sf', function()
  --   --   require('fzf-lua').files()
  --   -- end, { desc = '[S]earch [F]iles' })
  --   -- vim.keymap.set('n', '<leader>sd', function()
  --   --   require('fzf-lua').diagnostics_workspace()
  --   -- end, { desc = '[S]earch [D]iagnostics' })
  --   -- vim.keymap.set('n', '<leader>sg', function()
  --   --   require('fzf-lua').live_grep()
  --   -- end, { desc = '[S]earch by [G]rep' })
  --   vim.keymap.set('n', '<leader>sr', function()
  --     require('fzf-lua').resume()
  --   end, { desc = '[S]earch [R]esume' })
  --   -- vim.keymap.set('n', '<leader>sh', function()
  --   --   require('fzf-lua').help_tags()
  --   -- end, { desc = '[S]earch [H]elp' })
  --   -- vim.keymap.set('n', '<leader>gs', function()
  --   --   require('fzf-lua').git_status()
  --   -- end, { desc = '[G]it [S]tatus' })
  --   vim.keymap.set('n', '<leader>ss', function()
  --     require('fzf-lua').builtin()
  --   end, { desc = '[S]earch [S]elect Fzf' })
  --   vim.keymap.set('n', '<leader>s/', function()
  --     require('fzf-lua').lines()
  --   end, { desc = '[S]earch [/] in Open Files' })
  --   vim.keymap.set('n', '<leader>sw', function()
  --     require('fzf-lua').grep_cword()
  --   end, { desc = '[S]earch current [W]ord' })
  --   vim.keymap.set('n', '<leader>/', function()
  --     require('fzf-lua').blines()
  --   end, { desc = '[/] Fuzzily search in current buffer' })
  -- end,
}
