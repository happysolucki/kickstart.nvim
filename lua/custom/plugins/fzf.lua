return {
  'ibhagwan/fzf-lua',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set('n', '<leader>gf', function()
      require('fzf-lua').git_files()
    end, { desc = 'Search [G]it [F]iles' })
    vim.keymap.set('n', '<leader><space>', function()
      require('fzf-lua').buffers()
    end, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>?', function()
      require('fzf-lua').oldfiles()
    end, { desc = '[?] Find recently opened files' })
    vim.keymap.set('n', '<leader>sf', function()
      require('fzf-lua').files()
    end, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sd', function()
      require('fzf-lua').diagnostics_workspace()
    end, { desc = '[S]earch [D]iagnostics' })
    vim.keymap.set('n', '<leader>sg', function()
      require('fzf-lua').live_grep()
    end, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader>sr', function()
      require('fzf-lua').resume()
    end, { desc = '[S]earch [R]esume' })
    vim.keymap.set('n', '<leader>sh', function()
      require('fzf-lua').help_tags()
    end, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>gs', function()
      require('fzf-lua').git_status()
    end, { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>ss', function()
      require('fzf-lua').builtin()
    end, { desc = '[S]earch [S]elect Fzf' })
    vim.keymap.set('n', '<leader>s/', function()
      require('fzf-lua').lines()
    end, { desc = '[S]earch [/] in Open Files' })
    vim.keymap.set('n', '<leader>sw', function()
      require('fzf-lua').grep_cword()
    end, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>/', function()
      require('fzf-lua').blines()
    end, { desc = '[/] Fuzzily search in current buffer' })
  end,
}
